.class public final synthetic Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/media/MediaRouter2;

    check-cast p2, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter2;->updateControllerOnHandler(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method
