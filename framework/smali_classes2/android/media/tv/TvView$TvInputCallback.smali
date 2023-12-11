.class public abstract Landroid/media/tv/TvView$TvInputCallback;
.super Ljava/lang/Object;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInputCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAitInfoUpdated(Ljava/lang/String;Landroid/media/tv/AitInfo;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "aitInfo"    # Landroid/media/tv/AitInfo;

    .line 1196
    return-void
.end method

.method public onAudioPresentationSelected(Ljava/lang/String;II)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "presentationId"    # I
    .param p3, "programId"    # I

    .line 1084
    return-void
.end method

.method public onAudioPresentationsChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)V"
        }
    .end annotation

    .line 1073
    .local p2, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    return-void
.end method

.method public onAvailableSpeeds(Ljava/lang/String;[F)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "speeds"    # [F

    .line 1244
    return-void
.end method

.method public onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 1063
    return-void
.end method

.method public onConnectionFailed(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1045
    return-void
.end method

.method public onContentAllowed(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1151
    return-void
.end method

.method public onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "rating"    # Landroid/media/tv/TvContentRating;

    .line 1161
    return-void
.end method

.method public onCueingMessageAvailability(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "available"    # Z

    .line 1216
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1053
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1173
    return-void
.end method

.method public onSignalStrengthUpdated(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "strength"    # I

    .line 1206
    return-void
.end method

.method public onTimeShiftMode(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1229
    return-void
.end method

.method public onTimeShiftStatusChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 1188
    return-void
.end method

.method public onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;

    .line 1105
    return-void
.end method

.method public onTracksChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1093
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public onTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 1252
    return-void
.end method

.method public onTvMessage(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .line 1270
    return-void
.end method

.method public onVideoAvailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1125
    return-void
.end method

.method public onVideoSizeChanged(Ljava/lang/String;II)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1117
    return-void
.end method

.method public onVideoUnavailable(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 1142
    return-void
.end method
