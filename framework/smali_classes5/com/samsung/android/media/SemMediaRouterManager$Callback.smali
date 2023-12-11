.class public interface abstract Lcom/samsung/android/media/SemMediaRouterManager$Callback;
.super Ljava/lang/Object;
.source "SemMediaRouterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaRouterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 279
    return-void
.end method

.method public onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 273
    .local p2, "preferredFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onRequestFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 276
    return-void
.end method

.method public onRoutesUpdated()V
    .registers 1

    .line 236
    return-void
.end method

.method public onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 2
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 249
    return-void
.end method

.method public onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 2
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 242
    return-void
.end method

.method public onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 3
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 264
    return-void
.end method

.method public onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "newSession"    # Landroid/media/RoutingSessionInfo;

    .line 258
    return-void
.end method
