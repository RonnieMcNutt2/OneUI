.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$MetadataEditor;,
        Landroid/media/RemoteControlClient$OnMetadataUpdateListener;,
        Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;,
        Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final DEFAULT_PLAYBACK_VOLUME_HANDLING:I = 0x1

.field public static final FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_POSITION_UPDATE:I = 0x100

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_RATING:I = 0x200

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static MEDIA_POSITION_READABLE:I = 0x0

.field public static MEDIA_POSITION_WRITABLE:I = 0x0

.field public static final PLAYBACKINFO_INVALID_VALUE:I = -0x80000000

.field public static final PLAYBACKINFO_PLAYBACK_TYPE:I = 0x1

.field public static final PLAYBACKINFO_USES_STREAM:I = 0x5

.field public static final PLAYBACKINFO_VOLUME:I = 0x2

.field public static final PLAYBACKINFO_VOLUME_HANDLING:I = 0x4

.field public static final PLAYBACKINFO_VOLUME_MAX:I = 0x3

.field public static final PLAYBACK_POSITION_ALWAYS_UNKNOWN:J = -0x7fe688e67fe67d00L

.field public static final PLAYBACK_POSITION_INVALID:J = -0x1L

.field public static final PLAYBACK_SPEED_1X:F = 1.0f

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field private static final PLAYBACK_TYPE_MAX:I = 0x1

.field private static final PLAYBACK_TYPE_MIN:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final PLAYSTATE_BUFFERING:I = 0x8

.field public static final PLAYSTATE_ERROR:I = 0x9

.field public static final PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_REWINDING:I = 0x5

.field public static final PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final POSITION_DRIFT_MAX_MS:J = 0x1f4L

.field private static final POSITION_REFRESH_PERIOD_MIN_MS:J = 0x7d0L

.field private static final POSITION_REFRESH_PERIOD_PLAYING_MS:J = 0x3a98L

.field public static final RCSE_ID_UNREGISTERED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RemoteControlClient"


# instance fields
.field private final mCacheLock:Ljava/lang/Object;

.field private mCurrentClientGenId:I

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMetadata:Landroid/os/Bundle;

.field private mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

.field private mNeedsPositionSync:Z

.field private mOriginalArtwork:Landroid/graphics/Bitmap;

.field private mPlaybackPositionMs:J

.field private mPlaybackSpeed:F

.field private mPlaybackState:I

.field private mPlaybackStateChangeTimeMs:J

.field private mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field private mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field private final mRcMediaIntent:Landroid/app/PendingIntent;

.field private mSession:Landroid/media/session/MediaSession;

.field private mSessionPlaybackState:Landroid/media/session/PlaybackState;

.field private mTransportControlFlags:I

.field private mTransportListener:Landroid/media/session/MediaSession$Callback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCacheLock(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentClientGenId(Landroid/media/RemoteControlClient;)I
    .registers 1

    iget p0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaMetadata(Landroid/media/RemoteControlClient;)Landroid/media/MediaMetadata;
    .registers 1

    iget-object p0, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetadata(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalArtwork(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;
    .registers 1

    iget-object p0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransportControlFlags(Landroid/media/RemoteControlClient;)I
    .registers 1

    iget p0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMediaMetadata(Landroid/media/RemoteControlClient;Landroid/media/MediaMetadata;)V
    .registers 2

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMetadata(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOriginalArtwork(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$monSeekTo(Landroid/media/RemoteControlClient;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSeekTo(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpdateMetadata(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateMetadata(IILjava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 821
    const/4 v0, 0x1

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    .line 829
    const/4 v0, 0x2

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 845
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 850
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 854
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 858
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 871
    iput v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 877
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 895
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 908
    iput-boolean v0, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 935
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    .line 349
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .registers 6
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 845
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 850
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 854
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 858
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 871
    iput v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 877
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 895
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 908
    iput-boolean v0, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 935
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    .line 368
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 369
    return-void
.end method

.method private static getActionForRccFlag(I)J
    .registers 3
    .param p0, "flag"    # I

    .line 1121
    sparse-switch p0, :sswitch_data_24

    .line 1143
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1141
    :sswitch_6
    const-wide/16 v0, 0x80

    return-wide v0

    .line 1139
    :sswitch_9
    const-wide/16 v0, 0x100

    return-wide v0

    .line 1137
    :sswitch_c
    const-wide/16 v0, 0x20

    return-wide v0

    .line 1135
    :sswitch_f
    const-wide/16 v0, 0x40

    return-wide v0

    .line 1133
    :sswitch_12
    const-wide/16 v0, 0x1

    return-wide v0

    .line 1131
    :sswitch_15
    const-wide/16 v0, 0x2

    return-wide v0

    .line 1129
    :sswitch_18
    const-wide/16 v0, 0x200

    return-wide v0

    .line 1127
    :sswitch_1b
    const-wide/16 v0, 0x4

    return-wide v0

    .line 1125
    :sswitch_1e
    const-wide/16 v0, 0x8

    return-wide v0

    .line 1123
    :sswitch_21
    const-wide/16 v0, 0x10

    return-wide v0

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_1e
        0x4 -> :sswitch_1b
        0x8 -> :sswitch_18
        0x10 -> :sswitch_15
        0x20 -> :sswitch_12
        0x40 -> :sswitch_f
        0x80 -> :sswitch_c
        0x100 -> :sswitch_9
        0x200 -> :sswitch_6
    .end sparse-switch
.end method

.method private static getActionsFromRccControlFlags(I)J
    .registers 9
    .param p0, "rccFlags"    # I

    .line 1097
    const-wide/16 v0, 0x0

    .line 1098
    .local v0, "actions":J
    const-wide/16 v2, 0x1

    .line 1099
    .local v2, "flag":J
    :goto_4
    int-to-long v4, p0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1a

    .line 1100
    int-to-long v4, p0

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_17

    .line 1101
    long-to-int v4, v2

    invoke-static {v4}, Landroid/media/RemoteControlClient;->getActionForRccFlag(I)J

    move-result-wide v4

    or-long/2addr v0, v4

    .line 1103
    :cond_17
    const/4 v4, 0x1

    shl-long/2addr v2, v4

    goto :goto_4

    .line 1105
    :cond_1a
    return-wide v0
.end method

.method private static getCheckPeriodFromSpeed(F)J
    .registers 5
    .param p0, "speed"    # F

    .line 1020
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    .line 1021
    const-wide/16 v0, 0x3a98

    return-wide v0

    .line 1023
    :cond_d
    const v0, 0x466a6000    # 15000.0f

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static getRccControlFlagsFromActions(J)I
    .registers 9
    .param p0, "actions"    # J

    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, "rccFlags":I
    const-wide/16 v1, 0x1

    .line 1111
    .local v1, "action":J
    :goto_3
    cmp-long v3, v1, p0

    if-gtz v3, :cond_1e

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gez v3, :cond_1e

    .line 1112
    and-long v3, v1, p0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1b

    .line 1113
    invoke-static {v1, v2}, Landroid/media/RemoteControlClient;->getRccFlagForAction(J)I

    move-result v3

    or-int/2addr v0, v3

    .line 1115
    :cond_1b
    const/4 v3, 0x1

    shl-long/2addr v1, v3

    goto :goto_3

    .line 1117
    :cond_1e
    return v0
.end method

.method private static getRccFlagForAction(J)I
    .registers 4
    .param p0, "action"    # J

    .line 1149
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_a

    long-to-int v0, p0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1150
    .local v0, "testAction":I
    :goto_b
    sparse-switch v0, :sswitch_data_2a

    .line 1172
    return v1

    .line 1158
    :sswitch_f
    const/16 v1, 0x8

    return v1

    .line 1168
    :sswitch_12
    const/16 v1, 0x100

    return v1

    .line 1170
    :sswitch_15
    const/16 v1, 0x200

    return v1

    .line 1164
    :sswitch_18
    const/16 v1, 0x40

    return v1

    .line 1166
    :sswitch_1b
    const/16 v1, 0x80

    return v1

    .line 1152
    :sswitch_1e
    const/4 v1, 0x1

    return v1

    .line 1154
    :sswitch_20
    const/4 v1, 0x2

    return v1

    .line 1156
    :sswitch_22
    const/4 v1, 0x4

    return v1

    .line 1160
    :sswitch_24
    const/16 v1, 0x10

    return v1

    .line 1162
    :sswitch_27
    const/16 v1, 0x20

    return v1

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_24
        0x4 -> :sswitch_22
        0x8 -> :sswitch_20
        0x10 -> :sswitch_1e
        0x20 -> :sswitch_1b
        0x40 -> :sswitch_18
        0x80 -> :sswitch_15
        0x100 -> :sswitch_12
        0x200 -> :sswitch_f
    .end sparse-switch
.end method

.method static getRccStateFromState(I)I
    .registers 2
    .param p0, "state"    # I

    .line 1070
    packed-switch p0, :pswitch_data_1c

    .line 1092
    :pswitch_3
    const/4 v0, -0x1

    return v0

    .line 1088
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 1086
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 1074
    :pswitch_9
    const/16 v0, 0x9

    return v0

    .line 1072
    :pswitch_c
    const/16 v0, 0x8

    return v0

    .line 1084
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 1076
    :pswitch_11
    const/4 v0, 0x4

    return v0

    .line 1082
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 1080
    :pswitch_15
    const/4 v0, 0x2

    return v0

    .line 1090
    :pswitch_17
    const/4 v0, 0x1

    return v0

    .line 1078
    :pswitch_19
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static getStateFromRccState(I)I
    .registers 2
    .param p0, "rccState"    # I

    .line 1036
    packed-switch p0, :pswitch_data_1c

    .line 1058
    const/4 v0, -0x1

    return v0

    .line 1040
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 1038
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 1052
    :pswitch_9
    const/16 v0, 0x9

    return v0

    .line 1054
    :pswitch_c
    const/16 v0, 0xa

    return v0

    .line 1050
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 1042
    :pswitch_11
    const/4 v0, 0x4

    return v0

    .line 1048
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 1046
    :pswitch_15
    const/4 v0, 0x2

    return v0

    .line 1056
    :pswitch_17
    const/4 v0, 0x1

    return v0

    .line 1044
    :pswitch_19
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private onSeekTo(IJ)V
    .registers 6
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .line 954
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 955
    :try_start_3
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v1, p1, :cond_e

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    if-eqz v1, :cond_e

    .line 956
    invoke-interface {v1, p2, p3}, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;->onPlaybackPositionUpdate(J)V

    .line 958
    :cond_e
    monitor-exit v0

    .line 959
    return-void

    .line 958
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private onUpdateMetadata(IILjava/lang/Object;)V
    .registers 6
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 962
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_3
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v1, p1, :cond_e

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    if-eqz v1, :cond_e

    .line 964
    invoke-interface {v1, p2, p3}, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;->onMetadataUpdate(ILjava/lang/Object;)V

    .line 966
    :cond_e
    monitor-exit v0

    .line 967
    return-void

    .line 966
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method static playbackPositionShouldMove(I)Z
    .registers 2
    .param p0, "playstate"    # I

    .line 980
    packed-switch p0, :pswitch_data_8

    .line 992
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 987
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private setPlaybackStateInt(IJFZ)V
    .registers 20
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "hasPosition"    # Z

    .line 659
    move-object v1, p0

    move v2, p1

    move-wide/from16 v3, p2

    move/from16 v12, p4

    iget-object v13, v1, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v13

    .line 660
    :try_start_9
    iget v0, v1, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-ne v0, v2, :cond_19

    iget-wide v5, v1, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_19

    iget v0, v1, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_69

    .line 663
    :cond_19
    iput v2, v1, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 667
    const-wide/16 v7, -0x1

    if-eqz p5, :cond_2b

    .line 668
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_28

    .line 669
    iput-wide v7, v1, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_32

    .line 671
    :cond_28
    iput-wide v3, v1, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_32

    .line 674
    :cond_2b
    const-wide v5, -0x7fe688e67fe67d00L

    iput-wide v5, v1, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 676
    :goto_32
    iput v12, v1, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 678
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 681
    iget-object v0, v1, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_69

    .line 682
    invoke-static {p1}, Landroid/media/RemoteControlClient;->getStateFromRccState(I)I

    move-result v6

    .line 683
    .local v6, "pbState":I
    if-eqz p5, :cond_47

    iget-wide v7, v1, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_48

    .line 684
    :cond_47
    nop

    :goto_48
    nop

    .line 686
    .local v7, "position":J
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    iget-object v5, v1, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-direct {v0, v5}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 687
    .local v0, "bob":Landroid/media/session/PlaybackState$Builder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v5, v0

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v11}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 688
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    .line 689
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v5

    iput-object v5, v1, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 690
    iget-object v9, v1, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v9, v5}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 693
    .end local v0    # "bob":Landroid/media/session/PlaybackState$Builder;
    .end local v6    # "pbState":I
    .end local v7    # "position":J
    :cond_69
    monitor-exit v13

    .line 694
    return-void

    .line 693
    :catchall_6b
    move-exception v0

    monitor-exit v13
    :try_end_6d
    .catchall {:try_start_9 .. :try_end_6d} :catchall_6b

    throw v0
.end method


# virtual methods
.method public editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 5
    .param p1, "startEmpty"    # Z

    .line 590
    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$MetadataEditor-IA;)V

    .line 591
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    if-eqz p1, :cond_1b

    .line 592
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 593
    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 594
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 595
    iput-boolean v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    .line 596
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    goto :goto_2d

    .line 598
    :cond_1b
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 599
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 600
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 601
    iput-boolean v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    .line 604
    :goto_2d
    if-nez p1, :cond_3c

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-nez v1, :cond_34

    goto :goto_3c

    .line 607
    :cond_34
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2, v1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    iput-object v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    goto :goto_43

    .line 605
    :cond_3c
    :goto_3c
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    .line 609
    :goto_43
    return-object v0
.end method

.method public getMediaSession()Landroid/media/session/MediaSession;
    .registers 2

    .line 398
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 925
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .registers 4
    .param p1, "helper"    # Landroid/media/session/MediaSessionLegacyHelper;

    .line 375
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addRccListener(Landroid/app/PendingIntent;Landroid/media/session/MediaSession$Callback;)V

    .line 376
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->getSession(Landroid/app/PendingIntent;)Landroid/media/session/MediaSession;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    .line 377
    iget v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 378
    return-void
.end method

.method public setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
    .registers 4
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .line 748
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_3
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .line 750
    monitor-exit v0

    .line 751
    return-void

    .line 750
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V
    .registers 4
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 809
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_3
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 811
    monitor-exit v0

    .line 812
    return-void

    .line 811
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    .registers 4
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 797
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_3
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 799
    monitor-exit v0

    .line 800
    return-void

    .line 799
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setPlaybackState(I)V
    .registers 8
    .param p1, "state"    # I

    .line 626
    const-wide v2, -0x7fe688e67fe67d00L

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 628
    return-void
.end method

.method public setPlaybackState(IJF)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F

    .line 654
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 655
    return-void
.end method

.method public setTransportControlFlags(I)V
    .registers 6
    .param p1, "transportControlFlags"    # I

    .line 711
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_3
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 716
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v1, :cond_22

    .line 717
    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-direct {v1, v2}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 718
    .local v1, "bob":Landroid/media/session/PlaybackState$Builder;
    invoke-static {p1}, Landroid/media/RemoteControlClient;->getActionsFromRccControlFlags(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 719
    invoke-virtual {v1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    iput-object v2, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 720
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v3, v2}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 722
    .end local v1    # "bob":Landroid/media/session/PlaybackState$Builder;
    :cond_22
    monitor-exit v0

    .line 723
    return-void

    .line 722
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .registers 3
    .param p1, "helper"    # Landroid/media/session/MediaSessionLegacyHelper;

    .line 384
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->removeRccListener(Landroid/app/PendingIntent;)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    .line 386
    return-void
.end method
