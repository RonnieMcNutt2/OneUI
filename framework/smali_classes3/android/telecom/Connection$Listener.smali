.class abstract Landroid/telecom/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Listener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .registers 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "newAddress"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .line 1280
    return-void
.end method

.method public onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "isVoip"    # Z

    .line 1294
    return-void
.end method

.method public onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V
    .registers 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "audioRoute"    # I
    .param p3, "bluetoothAddress"    # Ljava/lang/String;

    .line 1303
    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .registers 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .line 1282
    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "conference"    # Landroid/telecom/Conference;

    .line 1298
    return-void
.end method

.method public onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1299
    return-void
.end method

.method public onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 1297
    .local p2, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "capabilities"    # I

    .line 1289
    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1302
    return-void
.end method

.method public onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "properties"    # I

    .line 1290
    return-void
.end method

.method public onConnectionTimeReset(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1310
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1288
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 1284
    return-void
.end method

.method public onEndpointChanged(Landroid/telecom/Connection;Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "endpoint"    # Landroid/telecom/CallEndpoint;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Landroid/telecom/CallEndpoint;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallEndpointException;",
            ">;)V"
        }
    .end annotation

    .line 1312
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/telecom/CallEndpointException;>;"
    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1300
    return-void
.end method

.method public onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1301
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 1309
    return-void
.end method

.method public onPostDialChar(Landroid/telecom/Connection;C)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "nextChar"    # C

    .line 1286
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 1285
    return-void
.end method

.method public onQueryLocation(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "timeoutMillis"    # J
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/location/Location;",
            "Landroid/telecom/QueryLocationException;",
            ">;)V"
        }
    .end annotation

    .line 1315
    .local p6, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    return-void
.end method

.method public onRemoteRttRequest(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1307
    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/Connection;Z)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "ringback"    # Z

    .line 1287
    return-void
.end method

.method public onRttInitiationFailure(Landroid/telecom/Connection;I)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "reason"    # I

    .line 1305
    return-void
.end method

.method public onRttInitiationSuccess(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1304
    return-void
.end method

.method public onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1306
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "state"    # I

    .line 1279
    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .line 1295
    return-void
.end method

.method public onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "supportedAudioRoutes"    # I

    .line 1291
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 1293
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .line 1283
    return-void
.end method
