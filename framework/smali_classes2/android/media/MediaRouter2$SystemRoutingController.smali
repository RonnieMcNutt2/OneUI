.class Landroid/media/MediaRouter2$SystemRoutingController;
.super Landroid/media/MediaRouter2$RoutingController;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemRoutingController"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaRouter2;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/MediaRouter2;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1936
    iput-object p1, p0, Landroid/media/MediaRouter2$SystemRoutingController;->this$0:Landroid/media/MediaRouter2;

    .line 1937
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 1938
    return-void
.end method


# virtual methods
.method public isReleased()Z
    .registers 2

    .line 1943
    const/4 v0, 0x0

    return v0
.end method

.method releaseInternal(Z)V
    .registers 2
    .param p1, "shouldReleaseSession"    # Z

    .line 1955
    return-void
.end method

.method scheduleRelease()Z
    .registers 2

    .line 1949
    const/4 v0, 0x1

    return v0
.end method
