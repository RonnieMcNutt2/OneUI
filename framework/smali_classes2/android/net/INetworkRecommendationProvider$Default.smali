.class public Landroid/net/INetworkRecommendationProvider$Default;
.super Ljava/lang/Object;
.source "INetworkRecommendationProvider.java"

# interfaces
.implements Landroid/net/INetworkRecommendationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkRecommendationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestScores([Landroid/net/NetworkKey;)V
    .registers 2
    .param p1, "networks"    # [Landroid/net/NetworkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
