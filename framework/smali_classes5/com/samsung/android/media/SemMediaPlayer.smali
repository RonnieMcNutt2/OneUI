.class public Lcom/samsung/android/media/SemMediaPlayer;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;,
        Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;,
        Lcom/samsung/android/media/SemMediaPlayer$EventHandler;,
        Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;,
        Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;,
        Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;,
        Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;,
        Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;,
        Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;,
        Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;,
        Lcom/samsung/android/media/SemMediaPlayer$StreamEventExecutor;,
        Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;,
        Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;,
        Lcom/samsung/android/media/SemMediaPlayer$SingleBackgroundMusic;,
        Lcom/samsung/android/media/SemMediaPlayer$SeekType;,
        Lcom/samsung/android/media/SemMediaPlayer$PlaybackEffect;,
        Lcom/samsung/android/media/SemMediaPlayer$PlaybackDirection;,
        Lcom/samsung/android/media/SemMediaPlayer$PlaybackRateAudioMode;
    }
.end annotation


# static fields
.field public static final AUDIO_VOLUME_FADE_IN:I = 0x1

.field public static final AUDIO_VOLUME_FADE_INOUT:I = 0x3

.field public static final AUDIO_VOLUME_FADE_NONE:I = 0x0

.field public static final AUDIO_VOLUME_FADE_OUT:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_REMOVE_EXTERNAL_SOURCE:I = 0x8

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field public static final KEY_PARAMETER_ADAPTIVE_ACCURATE_SEEK_THRESHOLD:I = 0x88bd

.field private static final KEY_PARAMETER_DYNAMIC_VIEW_CONFIGURATION:I = 0x9471

.field private static final KEY_PARAMETER_DYNAMIC_VIEW_DELEGATE_CONFIGURATION:I = 0x9472

.field public static final KEY_PARAMETER_ENABLE_ALL_SUPER_SLOW_REGION:I = 0x8ca0

.field public static final KEY_PARAMETER_EXCLUDE_AUDIO_TRACK:I = 0x88bc

.field public static final KEY_PARAMETER_HOVERING_TYPE:I = 0x7cce

.field public static final KEY_PARAMETER_TIMED_TEXT_TRACK_TIME_SYNC:I = 0x7b0d

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_CHANGED_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_RESOURCE_OVERSPEC:I = -0x1389

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NO_AUDIO:I = 0x2adc

.field public static final MEDIA_INFO_NO_VIDEO:I = 0x2add

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_SUPERSLOW_REGION:I = 0x2ade

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_AUDIO:I = 0x2ac6

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_UNSUPPORTED_TICKPLAY:I = 0x2ac9

.field public static final MEDIA_INFO_UNSUPPORTED_VIDEO:I = 0x2ac7

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field private static final MEDIA_INIT_COMPLETE:I = 0x1

.field private static final MEDIA_NOTIFY_TIME:I = 0x62

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final PLAYBACK_DIRECTION_BACKWARD:I = 0x1

.field public static final PLAYBACK_DIRECTION_FORWARD:I = 0x0

.field public static final PLAYBACK_EFFECT_BACKWARD:I = 0x2

.field public static final PLAYBACK_EFFECT_FORWARD:I = 0x1

.field public static final PLAYBACK_EFFECT_NONE:I = 0x0

.field public static final PLAYBACK_EFFECT_SWING:I = 0x3

.field public static final PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field public static final SEEK_TYPE_ACCURATE_FRAME:I = 0x1

.field public static final SEEK_TYPE_ADAPTIVE_ACCURATE_FRAME:I = 0x5

.field public static final SEEK_TYPE_CLOSEST_SYNC_FRAME:I = 0x4

.field public static final SEEK_TYPE_ONE_FRAME_BACKWARD:I = 0x2

.field public static final SEEK_TYPE_ONE_FRAME_FORWARD:I = 0x3

.field public static final SEEK_TYPE_VIDEO_PREVIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemMediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private mAttributes:Landroid/media/AudioAttributes;

.field private mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

.field private mExtSubtitleDataHandler:Landroid/os/Handler;

.field private mExtSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

.field private mInbandTrackIndices:Ljava/util/BitSet;

.field private mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIntSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mOnBufferingUpdateListener:Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;

.field private mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

.field private mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

.field private mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnWhilePlaying:Z

.field private mSelectedSubtitleTrackIndex:I

.field private mSpeedRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;",
            ">;"
        }
    .end annotation
.end field

.field private mStayAwake:Z

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListenerDisabled:Z

.field private mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

.field private final mTimeProviderLock:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtSubtitleDataHandler(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndexTrackPairs(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIntSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNativeContext(Lcom/samsung/android/media/SemMediaPlayer;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmOnBufferingUpdateListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnBufferingUpdateListener:Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnInfoListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnTimedTextListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnTimedTextListener:Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnVideoSizeChangedListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubtitleDataListenerDisabled(Lcom/samsung/android/media/SemMediaPlayer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleDataListenerDisabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/SubtitleController;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSuperSlowInfo(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    return-void
.end method

.method static bridge synthetic -$$Nest$mpopulateInbandTracks(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks([Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanInternalSubtitleTracks(Lcom/samsung/android/media/SemMediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstayAwake(Lcom/samsung/android/media/SemMediaPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_stream_event_onStreamDataRequest(JJJI)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/media/SemMediaPlayer;->native_stream_event_onStreamDataRequest(JJJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_stream_event_onStreamPresentationEnd(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer;->native_stream_event_onStreamPresentationEnd(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_stream_event_onTearDown(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer;->native_stream_event_onTearDown(JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 460
    const-string/jumbo v0, "semmediaplayer_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/samsung/android/media/SemMediaPlayer;->native_init()V

    .line 462
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1746
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    .line 1747
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    .line 2644
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    .line 3280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    .line 3442
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    .line 4348
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 4351
    new-instance v1, Lcom/samsung/android/media/SemMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/SemMediaPlayer$2;-><init>(Lcom/samsung/android/media/SemMediaPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIntSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    .line 472
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_3d

    .line 473
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    goto :goto_4e

    .line 474
    :cond_3d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_4c

    .line 475
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    goto :goto_4e

    .line 477
    :cond_4c
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    .line 480
    :goto_4e
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;-><init>(Lcom/samsung/android/media/SemMediaPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 481
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    .line 483
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 484
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mAttributes:Landroid/media/AudioAttributes;

    .line 487
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->native_setup(Ljava/lang/Object;Landroid/media/AudioAttributes;)V

    .line 488
    return-void
.end method

.method private native _crop(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _getCurrentFrame(II)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _init(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _init(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _notifyAt(J)V
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _seekTo(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setAudioAttributes(Landroid/media/AudioAttributes;)V
.end method

.method private native _setBackgroundMusic(Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setTemporalZoom(I)V
.end method

.method private native _setVideoFilterLevel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method private native _setVideoScalingMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native _setVolume(FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _updateRegionSEFData(ILandroid/os/Parcel;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private attemptInit(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 556
    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_1e

    .line 557
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_12

    .line 558
    nop

    .line 559
    if-eqz v0, :cond_10

    :try_start_d
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_10} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_10} :catch_1e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1e

    .line 558
    :cond_10
    const/4 v1, 0x1

    return v1

    .line 556
    :catchall_12
    move-exception v1

    if-eqz v0, :cond_1d

    :try_start_15
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v2

    :try_start_1a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "uri":Landroid/net/Uri;
    :cond_1d
    :goto_1d
    throw v1
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1e} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1e} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1e

    .line 559
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_1e
    move-exception v0

    .line 560
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_30

    const-string/jumbo v2, "null uri"

    goto :goto_34

    :cond_30
    invoke-virtual {p2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMediaPlayer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    const/4 v1, 0x0

    return v1
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 4185
    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4186
    const/4 v0, 0x1

    return v0

    .line 4188
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Landroid/os/IBinder;"
        }
    .end annotation

    .line 763
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const-string/jumbo v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_25

    .line 765
    :cond_13
    const-string/jumbo v0, "widevine://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 766
    const-string v0, "SemMediaPlayer"

    const-string v1, "Widevine classic is no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_23
    const/4 v0, 0x0

    return-object v0

    .line 764
    :cond_25
    :goto_25
    new-instance v0, Landroid/media/MediaHTTPService;

    invoke-direct {v0, p2}, Landroid/media/MediaHTTPService;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/media/MediaHTTPService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private getCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    if-eqz p1, :cond_4b

    .line 643
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 644
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v1, 0x0

    const-string v2, "SemMediaPlayer"

    if-nez v0, :cond_11

    .line 645
    const-string v3, "cache directory doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-object v1

    .line 648
    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_33

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no permission to write cache directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-object v1

    .line 652
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 641
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_4b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInbandTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1779
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1782
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, 0x1

    :try_start_9
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1784
    sget-object v2, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1f

    .line 1785
    .local v2, "trackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    nop

    .line 1787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1785
    return-object v2

    .line 1787
    .end local v2    # "trackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    :catchall_1f
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1789
    throw v2
.end method

.method private init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .registers 15
    .param p1, "path"    # Ljava/lang/String;
    .param p4, "cacheDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 706
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v0, 0x0

    .line 707
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 709
    .local v1, "values":[Ljava/lang/String;
    if-eqz p2, :cond_39

    .line 710
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 711
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 713
    const/4 v2, 0x0

    .line 714
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 715
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v2

    .line 716
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 717
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    .line 718
    goto :goto_19

    .line 720
    .end local v2    # "i":I
    :cond_39
    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, v1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method private init(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .param p5, "cacheDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 726
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 727
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 729
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    .line 730
    :cond_15
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 733
    if-eqz v1, :cond_2d

    .line 735
    nop

    .line 736
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/media/SemMediaPlayer;->createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;

    move-result-object v4

    .line 735
    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/media/SemMediaPlayer;->_init(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return-void

    .line 743
    :cond_2d
    :goto_2d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 744
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 745
    const/4 v3, 0x0

    .line 747
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_39
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 748
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 749
    .local v4, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v4}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_4c

    .line 751
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 752
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 755
    .end local v3    # "is":Ljava/io/FileInputStream;
    nop

    .line 758
    return-void

    .line 751
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_4c
    move-exception v4

    if-eqz v3, :cond_52

    .line 752
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 754
    :cond_52
    throw v4

    .line 756
    .end local v3    # "is":Ljava/io/FileInputStream;
    :cond_53
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "init failed with file scheme"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 732
    .end local v2    # "file":Ljava/io/File;
    :cond_5c
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "init failed with content scheme"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private internalSetDynamicViewingConfigurations(Ljava/util/List;Z)V
    .registers 9
    .param p2, "delegatePlaybackControl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4123
    .local p1, "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    if-eqz p1, :cond_7f

    .line 4127
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 4131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4133
    .local v0, "request":Landroid/os/Parcel;
    :try_start_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;

    .line 4135
    .local v2, "config":Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->getStartTime()I

    move-result v3

    .line 4136
    .local v3, "startTimeMs":I
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->getEndTime()I

    move-result v4

    .line 4137
    .local v4, "endTimeMs":I
    if-nez p2, :cond_38

    if-ge v3, v4, :cond_30

    goto :goto_38

    .line 4138
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "DynamicViewingConfiguration startTimeMs is equal or greater than endTimeMs in not delegated"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "request":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .end local p2    # "delegatePlaybackControl":Z
    throw v1

    .line 4141
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .restart local p2    # "delegatePlaybackControl":Z
    :cond_38
    :goto_38
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4142
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4143
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->getSpeedRate()F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4144
    .end local v2    # "config":Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;
    .end local v3    # "startTimeMs":I
    .end local v4    # "endTimeMs":I
    goto :goto_17

    .line 4146
    :cond_46
    if-nez p2, :cond_5b

    .line 4147
    const v1, 0x9471

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_64

    .line 4148
    :cond_52
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setDynamicViewingConfigurations is called after init()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "request":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .end local p2    # "delegatePlaybackControl":Z
    throw v1

    .line 4151
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .restart local p2    # "delegatePlaybackControl":Z
    :cond_5b
    const v1, 0x9472

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1
    :try_end_62
    .catchall {:try_start_c .. :try_end_62} :catchall_72

    if-eqz v1, :cond_69

    .line 4156
    :goto_64
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4157
    nop

    .line 4158
    return-void

    .line 4152
    :cond_69
    :try_start_69
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setDynamicViewingConfigurations delegatePlaybackControl failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "request":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .end local p2    # "delegatePlaybackControl":Z
    throw v1
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_72

    .line 4156
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    .restart local p2    # "delegatePlaybackControl":Z
    :catchall_72
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4157
    throw v1

    .line 4128
    .end local v0    # "request":Landroid/os/Parcel;
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dynamicViewingConfigs is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4124
    :cond_7f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dynamicViewingConfigs can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isVideoScalingModeSupported(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 857
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method private final native native_setup(Ljava/lang/Object;Landroid/media/AudioAttributes;)V
.end method

.method private static native native_stream_event_onStreamDataRequest(JJJI)V
.end method

.method private static native native_stream_event_onStreamPresentationEnd(JJ)V
.end method

.method private static native native_stream_event_onTearDown(JJ)V
.end method

.method private populateInbandTracks()V
    .registers 2

    .line 4578
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks([Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    .line 4579
    return-void
.end method

.method private populateInbandTracks([Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .registers 8
    .param p1, "trackInfo"    # [Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    .line 4583
    if-nez p1, :cond_7

    .line 4584
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getInbandTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    move-result-object v0

    .local v0, "tracks":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    goto :goto_8

    .line 4586
    .end local v0    # "tracks":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    :cond_7
    move-object v0, p1

    .line 4588
    .restart local v0    # "tracks":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    :goto_8
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 4589
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    :try_start_c
    array-length v3, v0

    if-ge v2, v3, :cond_73

    .line 4590
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4591
    goto :goto_70

    .line 4593
    :cond_18
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 4596
    aget-object v3, v0, v2

    if-nez v3, :cond_3a

    .line 4597
    const-string v3, "SemMediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected NULL track at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4600
    :cond_3a
    aget-object v3, v0, v2

    if-eqz v3, :cond_62

    aget-object v3, v0, v2

    .line 4601
    invoke-virtual {v3}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_62

    .line 4603
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v4, v0, v2

    .line 4604
    invoke-virtual {v4}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 4603
    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v3

    .line 4605
    .local v3, "track":Landroid/media/SubtitleTrack;
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4606
    nop

    .end local v3    # "track":Landroid/media/SubtitleTrack;
    goto :goto_70

    .line 4607
    :cond_62
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4589
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4610
    .end local v2    # "i":I
    :cond_73
    monitor-exit v1

    .line 4611
    return-void

    .line 4610
    :catchall_75
    move-exception v2

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_c .. :try_end_77} :catchall_75

    throw v2
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 3260
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaPlayer;

    .line 3261
    .local v0, "player":Lcom/samsung/android/media/SemMediaPlayer;
    if-nez v0, :cond_c

    .line 3262
    return-void

    .line 3265
    :cond_c
    iget-object v1, v0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    if-eqz v1, :cond_19

    .line 3266
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3267
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3269
    .end local v1    # "m":Landroid/os/Message;
    :cond_19
    return-void
.end method

.method private scanInternalSubtitleTracks()V
    .registers 2

    .line 4568
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->setSubtitleAnchor()V

    .line 4570
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks()V

    .line 4572
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_d

    .line 4573
    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 4575
    :cond_d
    return-void
.end method

.method private selectOrDeselectInbandTrack(IZ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1935
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1937
    .local v1, "reply":Landroid/os/Parcel;
    if-eqz p2, :cond_c

    const/4 v2, 0x4

    goto :goto_d

    :cond_c
    const/4 v2, 0x5

    :goto_d
    :try_start_d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1e

    .line 1941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1943
    nop

    .line 1944
    return-void

    .line 1941
    :catchall_1e
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1943
    throw v2
.end method

.method private selectOrDeselectTrack(IZ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1898
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks()V

    .line 1900
    const/4 v0, 0x0

    .line 1902
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_c} :catch_41

    move-object v0, v1

    .line 1906
    nop

    .line 1908
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/media/SubtitleTrack;

    .line 1909
    .local v1, "track":Landroid/media/SubtitleTrack;
    if-nez v1, :cond_20

    .line 1911
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/media/SemMediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 1912
    return-void

    .line 1915
    :cond_20
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v2, :cond_25

    .line 1916
    return-void

    .line 1919
    :cond_25
    if-nez p2, :cond_3d

    .line 1921
    invoke-virtual {v2}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v2

    if-ne v2, v1, :cond_34

    .line 1922
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_3c

    .line 1924
    :cond_34
    const-string v2, "SemMediaPlayer"

    const-string/jumbo v3, "trying to deselect track that was not selected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :goto_3c
    return-void

    .line 1929
    :cond_3d
    invoke-virtual {v2, v1}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 1930
    return-void

    .line 1903
    .end local v1    # "track":Landroid/media/SubtitleTrack;
    :catch_41
    move-exception v1

    .line 1905
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-void
.end method

.method private setOnSubtitleDataListenerInt(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2632
    monitor-enter p0

    .line 2633
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    .line 2634
    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    .line 2635
    monitor-exit p0

    .line 2636
    return-void

    .line 2635
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private declared-synchronized setSubtitleAnchor()V
    .registers 7

    monitor-enter p0

    .line 4315
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_3f

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 4316
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 4317
    .local v0, "timeProvider":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SetSubtitleAnchorThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4318
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 4319
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4320
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/samsung/android/media/SemMediaPlayer$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$1;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_41

    .line 4340
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_41

    .line 4344
    goto :goto_3f

    .line 4341
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    :catch_30
    move-exception v3

    .line 4342
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 4343
    const-string v4, "SemMediaPlayer"

    const-string v5, "failed to join SetSubtitleAnchorThread"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_41

    .line 4346
    .end local v0    # "timeProvider":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    .end local v1    # "thread":Landroid/os/HandlerThread;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    .line 4314
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stayAwake(Z)V
    .registers 3
    .param p1, "awake"    # Z

    .line 1202
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_21

    .line 1203
    if-eqz p1, :cond_12

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1204
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_21

    .line 1205
    :cond_12
    if-nez p1, :cond_21

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1206
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1209
    :cond_21
    :goto_21
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mStayAwake:Z

    .line 1210
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    .line 1211
    return-void
.end method

.method private updateSurfaceScreenOn()V
    .registers 3

    .line 1214
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_12

    .line 1215
    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mStayAwake:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1217
    :cond_12
    return-void
.end method


# virtual methods
.method public addRegion(IIII)V
    .registers 7
    .param p1, "playbackRate"    # I
    .param p2, "videoStartTimeMs"    # I
    .param p3, "videoEndTimeMs"    # I
    .param p4, "audioEndTimeMs"    # I

    .line 3290
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion-IA;)V

    .line 3291
    .local v0, "speedRegion":Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;
    iput p1, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->speedRate:I

    .line 3292
    iput p2, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoStart:I

    .line 3293
    iput p3, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoEnd:I

    .line 3294
    iput p4, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    .line 3296
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3297
    return-void
.end method

.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4424
    move-object v0, p1

    .line 4425
    .local v0, "fIs":Ljava/io/InputStream;
    move-object v1, p2

    .line 4427
    .local v1, "fFormat":Landroid/media/MediaFormat;
    if-eqz p2, :cond_3a

    .line 4431
    if-eqz p1, :cond_13

    .line 4434
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v2

    .line 4435
    :try_start_9
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4436
    monitor-exit v2

    goto :goto_1a

    :catchall_10
    move-exception v3

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v3

    .line 4438
    :cond_13
    const-string v2, "SemMediaPlayer"

    const-string v3, "addSubtitleSource called with null InputStream"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    :goto_1a
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    .line 4444
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SubtitleReadThread"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4450
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 4451
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4452
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/samsung/android/media/SemMediaPlayer$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$3;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4525
    return-void

    .line 4428
    .end local v2    # "thread":Landroid/os/HandlerThread;
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4208
    invoke-static {p2}, Lcom/samsung/android/media/SemMediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 4211
    if-eqz p1, :cond_72

    .line 4215
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4216
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 4217
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4219
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4220
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 4221
    .local v3, "reply":Landroid/os/Parcel;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_67

    .line 4223
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_28
    const-string v5, "SemMediaPlayer"

    const-string/jumbo v6, "send invoke key : INVOKE_ID_ADD_EXTERNAL_SOURCE_FD"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4225
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4226
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 4227
    const-wide v5, 0x7ffffffffffffffL

    invoke-virtual {v2, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 4228
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4229
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_4e
    .catchall {:try_start_28 .. :try_end_4e} :catchall_5e

    .line 4231
    :try_start_4e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4232
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_67

    .line 4233
    nop

    .line 4235
    .end local v2    # "request":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 4236
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 4239
    .end local v1    # "is":Ljava/io/FileInputStream;
    nop

    .line 4243
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks()V

    .line 4244
    return-void

    .line 4231
    .restart local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "request":Landroid/os/Parcel;
    .restart local v3    # "reply":Landroid/os/Parcel;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_5e
    move-exception v5

    :try_start_5f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4232
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4233
    nop

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "is":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "mimeType":Ljava/lang/String;
    throw v5
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_67

    .line 4235
    .end local v2    # "request":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "mimeType":Ljava/lang/String;
    :catchall_67
    move-exception v2

    .line 4236
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 4238
    throw v2

    .line 4241
    .end local v1    # "is":Ljava/io/FileInputStream;
    :cond_6c
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4212
    .end local v0    # "file":Ljava/io/File;
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4209
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal mimeType for timed text source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4210
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public applyRegion(II)Z
    .registers 10
    .param p1, "updatePositionMs"    # I
    .param p2, "representativeRegionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3314
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_9b

    .line 3315
    if-lez v1, :cond_16

    .line 3316
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3318
    :cond_16
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3319
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3320
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoEnd:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3321
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3322
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    if-eq v4, v3, :cond_57

    if-eq p2, v3, :cond_57

    .line 3323
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v3, v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 3325
    :cond_57
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    const/4 v4, 0x0

    const-string v5, "Mismatched input of data."

    const-string v6, "SemMediaPlayer"

    if-eq v2, v3, :cond_73

    if-ne p2, v3, :cond_73

    .line 3326
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3328
    return v4

    .line 3329
    :cond_73
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    if-ne v2, v3, :cond_8a

    if-eq p2, v3, :cond_8a

    .line 3330
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3332
    return v4

    .line 3334
    :cond_8a
    :goto_8a
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->speedRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3314
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 3337
    .end local v1    # "i":I
    :cond_9b
    if-eq p2, v3, :cond_a5

    .line 3338
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3339
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3342
    :cond_a5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3343
    .local v1, "s":Ljava/lang/String;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3344
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3345
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/media/SemMediaPlayer;->_updateRegionSEFData(ILandroid/os/Parcel;)Z

    move-result v3

    .line 3346
    .local v3, "ret":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3347
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3348
    return v3
.end method

.method public clearOnSubtitleDataListener()V
    .registers 2

    .line 2627
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setOnSubtitleDataListenerInt(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 2628
    return-void
.end method

.method public crop(IIII)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 1039
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaPlayer;->_crop(IIII)V

    .line 1040
    return-void
.end method

.method public deselectTrack(I)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1893
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 1894
    return-void
.end method

.method public easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .registers 6
    .param p1, "rate"    # F
    .param p2, "audioMode"    # I

    .line 1334
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 1335
    .local v0, "params":Landroid/media/PlaybackParams;
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 1336
    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_4a

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio playback mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1349
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1345
    .end local v1    # "msg":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1346
    goto :goto_49

    .line 1341
    :pswitch_34
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v1

    .line 1342
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 1343
    goto :goto_49

    .line 1338
    :pswitch_41
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1339
    nop

    .line 1351
    :goto_49
    return-object v0

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_34
        :pswitch_2c
    .end packed-switch
.end method

.method protected finalize()V
    .registers 1

    .line 1265
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->native_finalize()V

    .line 1266
    return-void
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1089
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_getCurrentFrame(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFrame(II)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1112
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->_getCurrentFrame(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public native getLastRenderedVideoPosition()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .registers 3

    .line 2648
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2649
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    if-nez v1, :cond_e

    .line 2650
    new-instance v1, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;-><init>(Lcom/samsung/android/media/SemMediaPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 2652
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    monitor-exit v0

    return-object v1

    .line 2653
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public native getPlaybackDirection()I
.end method

.method public native getPlaybackEffect()I
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getSelectedTrack(I)I
    .registers 9
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1809
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_2f

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2f

    .line 1811
    invoke-virtual {v0}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 1812
    .local v0, "subtitleTrack":Landroid/media/SubtitleTrack;
    if-eqz v0, :cond_2f

    .line 1813
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 1814
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    :try_start_11
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1815
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1816
    .local v3, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v4, v0, :cond_27

    .line 1817
    monitor-exit v1

    return v2

    .line 1814
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1820
    .end local v2    # "i":I
    :cond_2a
    monitor-exit v1

    goto :goto_2f

    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2c

    throw v2

    .line 1823
    .end local v0    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :cond_2f
    :goto_2f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1824
    .local v0, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1826
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, 0x7

    :try_start_38
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1828
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1829
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1830
    .local v2, "inbandTrackIndex":I
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_7f

    .line 1831
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_49
    :try_start_49
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_72

    .line 1832
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1833
    .local v5, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_6f

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_6f

    .line 1834
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_7c

    .line 1840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1834
    return v4

    .line 1831
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 1837
    .end local v4    # "i":I
    :cond_72
    :try_start_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_7c

    .line 1838
    nop

    .line 1840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1838
    const/4 v3, -0x1

    return v3

    .line 1837
    :catchall_7c
    move-exception v4

    :try_start_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    .end local v0    # "request":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .end local p1    # "trackType":I
    :try_start_7e
    throw v4
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    .line 1840
    .end local v2    # "inbandTrackIndex":I
    .restart local v0    # "request":Landroid/os/Parcel;
    .restart local v1    # "reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    .restart local p1    # "trackType":I
    :catchall_7f
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1842
    throw v2
.end method

.method public getSuperSlowRegions()[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;
    .registers 2

    .line 3451
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    return-object v0
.end method

.method public getTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1760
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getInbandTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    move-result-object v0

    .line 1761
    .local v0, "trackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 1762
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    .line 1763
    .local v2, "allTrackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v2

    if-ge v3, v4, :cond_3f

    .line 1764
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1765
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_2c

    .line 1767
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v0, v5

    aput-object v5, v2, v3

    goto :goto_3c

    .line 1769
    :cond_2c
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/media/SubtitleTrack;

    .line 1770
    .local v5, "track":Landroid/media/SubtitleTrack;
    new-instance v6, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v7

    const/4 v8, 0x6

    invoke-direct {v6, v8, v7}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v6, v2, v3

    .line 1763
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v5    # "track":Landroid/media/SubtitleTrack;
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1773
    .end local v3    # "i":I
    :cond_3f
    monitor-exit v1

    return-object v2

    .line 1774
    .end local v2    # "allTrackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v2
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 681
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    .line 682
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 670
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    .line 671
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz p1, :cond_90

    .line 597
    if-eqz p2, :cond_87

    .line 601
    if-eqz p4, :cond_19

    .line 602
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 603
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_19

    instance-of v1, v0, Ljava/net/CookieManager;

    if-eqz v1, :cond_11

    goto :goto_19

    .line 604
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The cookie handler has to be of CookieManager type when cookies are provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 610
    .end local v0    # "cookieHandler":Ljava/net/CookieHandler;
    :cond_19
    :goto_19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 611
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "authority":Ljava/lang/String;
    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 614
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/lang/String;)V

    .line 615
    return-void

    .line 616
    :cond_39
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    const-string/jumbo v3, "settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 619
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v3

    .line 620
    .local v3, "type":I
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v4

    .line 621
    .local v4, "cacheUri":Landroid/net/Uri;
    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 622
    .local v5, "actualUri":Landroid/net/Uri;
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/media/SemMediaPlayer;->attemptInit(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 623
    return-void

    .line 624
    :cond_61
    invoke-direct {p0, v0, v5}, Lcom/samsung/android/media/SemMediaPlayer;->attemptInit(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 625
    return-void

    .line 627
    :cond_68
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, p3, p4, v7}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 629
    .end local v3    # "type":I
    .end local v4    # "cacheUri":Landroid/net/Uri;
    .end local v5    # "actualUri":Landroid/net/Uri;
    goto :goto_86

    .line 631
    :cond_74
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/media/SemMediaPlayer;->attemptInit(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 632
    return-void

    .line 634
    :cond_7b
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, p3, p4, v4}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 637
    :goto_86
    return-void

    .line 598
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "authority":Ljava/lang/String;
    :cond_87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/res/AssetFileDescriptor;)V
    .registers 9
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 542
    if-eqz p1, :cond_25

    .line 548
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 549
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V

    goto :goto_24

    .line 551
    :cond_14
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    .line 553
    :goto_24
    return-void

    .line 543
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public init(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 511
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    .line 512
    return-void
.end method

.method public init(Ljava/io/FileDescriptor;JJ)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 527
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/media/SemMediaPlayer;->_init(Ljava/io/FileDescriptor;JJ)V

    .line 528
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .registers 7
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1131
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 1132
    .local v0, "retcode":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1133
    if-nez v0, :cond_b

    .line 1136
    return-void

    .line 1134
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public native isVideoDeflickerSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native isVideoSuperResolutionSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public notifyAt(J)V
    .registers 3
    .param p1, "mediaTimeUs"    # J

    .line 1228
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->_notifyAt(J)V

    .line 1229
    return-void
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .registers 8
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .line 4375
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_d

    .line 4377
    :try_start_5
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_8} :catch_9

    .line 4379
    goto :goto_a

    .line 4378
    :catch_9
    move-exception v0

    .line 4380
    :goto_a
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 4382
    :cond_d
    monitor-enter p0

    .line 4383
    const/4 v0, 0x1

    :try_start_f
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 4384
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_54

    .line 4385
    if-nez p1, :cond_15

    .line 4386
    return-void

    .line 4389
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    .line 4390
    :try_start_18
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 4391
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_3d

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v5, p1, :cond_3d

    .line 4393
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 4394
    goto :goto_3e

    .line 4396
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_3d
    goto :goto_1e

    .line 4397
    :cond_3e
    :goto_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_51

    .line 4399
    iget v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v2, :cond_50

    .line 4401
    :try_start_43
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/media/SemMediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_43 .. :try_end_46} :catch_47

    .line 4403
    goto :goto_48

    .line 4402
    :catch_47
    move-exception v0

    .line 4404
    :goto_48
    monitor-enter p0

    .line 4405
    :try_start_49
    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 4406
    monitor-exit p0

    goto :goto_50

    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v0

    .line 4409
    :cond_50
    :goto_50
    return-void

    .line 4397
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0

    .line 4384
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 916
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    .line 917
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_pause()V

    .line 918
    return-void
.end method

.method public playerSetVolume(FF)V
    .registers 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 1073
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->_setVolume(FF)V

    .line 1074
    return-void
.end method

.method public release()V
    .registers 5

    .line 975
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    .line 977
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 978
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    .line 979
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    .line 980
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 981
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    .line 982
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    .line 983
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnTimedTextListener:Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

    .line 985
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 986
    :try_start_16
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    if-eqz v3, :cond_1f

    .line 987
    invoke-virtual {v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->close()V

    .line 988
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 990
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_2f

    .line 992
    monitor-enter p0

    .line 993
    :try_start_21
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleDataListenerDisabled:Z

    .line 994
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    .line 995
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mExtSubtitleDataHandler:Landroid/os/Handler;

    .line 996
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2c

    .line 998
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_release()V

    .line 999
    return-void

    .line 996
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    .line 990
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public removeOutbandSubtitleSources()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4534
    const-string v0, "SemMediaPlayer"

    const-string/jumbo v1, "removeOutbandSubtitleSources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4536
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_14

    .line 4537
    const-string v0, "SemMediaPlayer"

    const-string v1, "Should have subtitle controller already set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    return-void

    .line 4541
    :cond_14
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 4543
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    .line 4544
    :try_start_1a
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 4545
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_5c

    .line 4547
    .local v2, "is":Ljava/io/InputStream;
    :try_start_34
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_5c

    .line 4549
    goto :goto_39

    .line 4548
    :catch_38
    move-exception v3

    .line 4550
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_39
    goto :goto_28

    .line 4551
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 4553
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_5c

    .line 4555
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_47

    .line 4556
    invoke-virtual {v0}, Landroid/media/SubtitleController;->resetTracks()V

    .line 4559
    :cond_47
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 4560
    :try_start_4a
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 4561
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 4562
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_59

    .line 4564
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks()V

    .line 4565
    return-void

    .line 4562
    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v0

    .line 4553
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public removeOutbandTimedTextSources()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4253
    const/4 v0, 0x0

    .line 4255
    .local v0, "outOfBandSubtitleTrackNum":I
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getInbandTrackInfo()[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    move-result-object v1

    .line 4257
    .local v1, "inbandtrackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    .line 4258
    :try_start_8
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    array-length v4, v1

    sub-int v0, v3, v4

    .line 4260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 4261
    .local v3, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_65

    .line 4263
    .local v4, "reply":Landroid/os/Parcel;
    const/16 v5, 0x8

    :try_start_1b
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4264
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/media/SemMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_5c

    .line 4266
    :try_start_21
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4267
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 4268
    nop

    .line 4270
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 4271
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 4272
    .end local v3    # "request":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_65

    .line 4274
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->populateInbandTracks()V

    .line 4277
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3

    .line 4278
    :try_start_39
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v2, :cond_57

    .line 4279
    invoke-virtual {v2}, Landroid/media/SubtitleController;->getTracks()[Landroid/media/SubtitleTrack;

    move-result-object v2

    .line 4280
    .local v2, "subtitiletracks":[Landroid/media/SubtitleTrack;
    array-length v4, v2

    sub-int/2addr v4, v0

    .local v4, "i":I
    :goto_43
    array-length v5, v2

    if-ge v4, v5, :cond_57

    if-ltz v4, :cond_57

    .line 4281
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    aget-object v6, v2, v4

    const/4 v7, 0x0

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4280
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 4284
    .end local v2    # "subtitiletracks":[Landroid/media/SubtitleTrack;
    .end local v4    # "i":I
    :cond_57
    monitor-exit v3

    .line 4285
    return-void

    .line 4284
    :catchall_59
    move-exception v2

    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_59

    throw v2

    .line 4266
    .restart local v3    # "request":Landroid/os/Parcel;
    .local v4, "reply":Landroid/os/Parcel;
    :catchall_5c
    move-exception v5

    :try_start_5d
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4267
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 4268
    nop

    .end local v0    # "outOfBandSubtitleTrackNum":I
    .end local v1    # "inbandtrackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    throw v5

    .line 4272
    .end local v3    # "request":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    .restart local v0    # "outOfBandSubtitleTrackNum":I
    .restart local v1    # "inbandtrackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    .restart local p0    # "this":Lcom/samsung/android/media/SemMediaPlayer;
    :catchall_65
    move-exception v3

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_65

    throw v3
.end method

.method public reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 928
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 929
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    .line 930
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_55

    .line 932
    .local v2, "is":Ljava/io/InputStream;
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_55

    .line 934
    goto :goto_1d

    .line 933
    :catch_1c
    move-exception v3

    .line 935
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_1d
    goto :goto_c

    .line 936
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 937
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_55

    .line 938
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_2b

    .line 939
    invoke-virtual {v0}, Landroid/media/SubtitleController;->reset()V

    .line 941
    :cond_2b
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 942
    :try_start_2e
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    if-eqz v0, :cond_38

    .line 943
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->close()V

    .line 944
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mTimeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 946
    :cond_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_52

    .line 948
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    .line 949
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_reset()V

    .line 951
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v0

    .line 952
    :try_start_43
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 953
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 954
    monitor-exit v0

    .line 955
    return-void

    .line 954
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_4f

    throw v1

    .line 946
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    .line 937
    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v1
.end method

.method public seekTo(I)V
    .registers 3
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1009
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(II)V

    .line 1010
    return-void
.end method

.method public seekTo(II)V
    .registers 3
    .param p1, "msec"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1021
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->_seekTo(II)V

    .line 1022
    return-void
.end method

.method public selectTrack(I)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1875
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 1876
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4168
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 4169
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mAttributes:Landroid/media/AudioAttributes;

    .line 4170
    return-void
.end method

.method public native setAudioVolumeFade(IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setBackgroundMusic(Lcom/samsung/android/media/SemBackgroundMusic;)V
    .registers 4
    .param p1, "semBgm"    # Lcom/samsung/android/media/SemBackgroundMusic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3854
    if-eqz p1, :cond_e

    .line 3858
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/SemBackgroundMusic;->writeToParcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v0

    .line 3859
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_setBackgroundMusic(Landroid/os/Parcel;)V

    .line 3860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3862
    return-void

    .line 3855
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SemBackgroundMusic param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundMusic(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V
    .registers 4
    .param p1, "SemBGM"    # Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3830
    if-nez p1, :cond_a

    .line 3831
    const-string v0, "SemMediaPlayer"

    const-string v1, "BackgroundMusic Null Pointer Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    return-void

    .line 3835
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->writeToParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 3836
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_setBackgroundMusic(Landroid/os/Parcel;)V

    .line 3837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3839
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 789
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 791
    if-eqz p1, :cond_9

    .line 792
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .local v0, "surface":Landroid/view/Surface;
    goto :goto_a

    .line 794
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_9
    const/4 v0, 0x0

    .line 796
    .restart local v0    # "surface":Landroid/view/Surface;
    :goto_a
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 797
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    .line 798
    return-void
.end method

.method public setDynamicViewingConfigurations(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4116
    .local p1, "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->internalSetDynamicViewingConfigurations(Ljava/util/List;Z)V

    .line 4117
    return-void
.end method

.method public setDynamicViewingConfigurations(Ljava/util/List;Z)V
    .registers 3
    .param p2, "delegatePlaybackControl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4102
    .local p1, "dynamicViewingConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->internalSetDynamicViewingConfigurations(Ljava/util/List;Z)V

    .line 4103
    return-void
.end method

.method public native setLooping(Z)V
.end method

.method public setOnBufferingUpdateListener(Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;

    .line 2529
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnBufferingUpdateListener:Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;

    .line 2530
    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 2335
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 2336
    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    .line 2463
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    .line 2464
    return-void
.end method

.method public setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 2215
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 2216
    return-void
.end method

.method public setOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    .line 2243
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    .line 2244
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    .line 2271
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    .line 2272
    return-void
.end method

.method public setOnSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    .line 2614
    if-eqz p1, :cond_7

    .line 2617
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setOnSubtitleDataListenerInt(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 2618
    return-void

    .line 2615
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2592
    if-eqz p1, :cond_10

    .line 2595
    if-eqz p2, :cond_8

    .line 2598
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->setOnSubtitleDataListenerInt(Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/os/Handler;)V

    .line 2599
    return-void

    .line 2596
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2593
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnTimedTextListener(Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

    .line 2558
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnTimedTextListener:Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

    .line 2559
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    .line 2495
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    .line 2496
    return-void
.end method

.method public setParameter(II)Z
    .registers 5
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 1252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1253
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1255
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1256
    return v1
.end method

.method public native setParameter(ILandroid/os/Parcel;)Z
.end method

.method public setParameter(ILjava/lang/String;)Z
    .registers 5
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1239
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1241
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1242
    return v1
.end method

.method public native setPlaybackDirection(I)V
.end method

.method public native setPlaybackEffect(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public native setPlaybackRange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setScreenOnWhilePlaying(Z)V
    .registers 4
    .param p1, "screenOn"    # Z

    .line 1192
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_17

    .line 1193
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_12

    .line 1194
    const-string v0, "SemMediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_12
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1197
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    .line 1199
    :cond_17
    return-void
.end method

.method public setSubtitleControllerAndAnchor(Landroid/content/Context;Landroid/widget/VideoView;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/widget/VideoView;

    .line 4300
    new-instance v0, Landroid/media/SubtitleController;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    .line 4301
    .local v0, "controller":Landroid/media/SubtitleController;
    new-instance v1, Landroid/media/WebVttRenderer;

    invoke-direct {v1, p1}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 4302
    new-instance v1, Landroid/media/TtmlRenderer;

    invoke-direct {v1, p1}, Landroid/media/TtmlRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 4303
    new-instance v1, Landroid/media/ClosedCaptionRenderer;

    invoke-direct {v1, p1}, Landroid/media/ClosedCaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 4304
    new-instance v1, Landroid/media/Cea708CaptionRenderer;

    invoke-direct {v1, p1}, Landroid/media/Cea708CaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 4305
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    .line 4306
    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 4307
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 822
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 823
    const-string v0, "SemMediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 826
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 827
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    .line 828
    return-void
.end method

.method public setTemporalZoom(I)V
    .registers 2
    .param p1, "scaleUp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 4627
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setTemporalZoom(I)V

    .line 4628
    return-void
.end method

.method public native setVideoDeflickerEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public setVideoFilterLevel(I)V
    .registers 5
    .param p1, "filterLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 3963
    const-string v0, "filterLevel("

    if-ltz p1, :cond_29

    .line 3968
    const/16 v1, 0x64

    if-gt p1, v1, :cond_c

    .line 3973
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoFilterLevel(I)V

    .line 3974
    return-void

    .line 3969
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is greater than 100"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3964
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is smaller than 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native setVideoFilterName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public setVideoScalingMode(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 883
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 887
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoScalingMode(I)V

    .line 888
    return-void

    .line 884
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scaling mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native setVideoSuperResolutionEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public setVolume(FF)V
    .registers 7
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1058
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, ") or rightVolume("

    const-string/jumbo v3, "leftVolume("

    if-ltz v1, :cond_41

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_41

    .line 1063
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_1c

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1c

    .line 1068
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->playerSetVolume(FF)V

    .line 1069
    return-void

    .line 1064
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is greater than 1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is smaller than 0.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 1157
    const/4 v0, 0x0

    .line 1160
    .local v0, "washeld":Z
    const-string v1, "audio.offload.ignore_setawake"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGNORING setWakeMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMediaPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    return-void

    .line 1165
    :cond_24
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_37

    .line 1166
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1167
    const/4 v0, 0x1

    .line 1168
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1170
    :cond_34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1173
    :cond_37
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1174
    .local v1, "pm":Landroid/os/PowerManager;
    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    const-class v4, Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1175
    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1176
    if-eqz v0, :cond_59

    .line 1177
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1179
    :cond_59
    return-void
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 900
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    .line 902
    :try_start_4
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_start()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_9

    .line 906
    nop

    .line 907
    return-void

    .line 903
    :catch_9
    move-exception v0

    .line 904
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    .line 905
    throw v0
.end method
