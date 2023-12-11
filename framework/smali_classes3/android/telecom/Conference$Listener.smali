.class abstract Landroid/telecom/Conference$Listener;
.super Ljava/lang/Object;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Conference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Listener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/Conference;Landroid/net/Uri;I)V
    .registers 4
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "newAddress"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .line 75
    return-void
.end method

.method public onCallDirectionChanged(Landroid/telecom/Conference;I)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "callDirection"    # I

    .line 79
    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/Conference;Ljava/lang/String;I)V
    .registers 4
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .line 78
    return-void
.end method

.method public onConferenceStateChanged(Landroid/telecom/Conference;Z)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "isConference"    # Z

    .line 74
    return-void
.end method

.method public onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 60
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connectionCapabilities"    # I

    .line 66
    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/Conference;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 76
    return-void
.end method

.method public onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connectionProperties"    # I

    .line 68
    return-void
.end method

.method public onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 61
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Conference;)V
    .registers 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 64
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 59
    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 72
    return-void
.end method

.method public onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Conference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/Conference;Z)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "ringback"    # Z

    .line 80
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Conference;II)V
    .registers 4
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 58
    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .line 71
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 70
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Conference;I)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "videoState"    # I

    .line 69
    return-void
.end method
