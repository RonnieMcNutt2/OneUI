.class public final Landroid/media/metrics/NetworkEvent$Builder;
.super Ljava/lang/Object;
.source "NetworkEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/NetworkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMetricsBundle:Landroid/os/Bundle;

.field private mNetworkType:I

.field private mTimeSinceCreatedMillis:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/metrics/NetworkEvent$Builder;->mNetworkType:I

    .line 212
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/NetworkEvent$Builder;->mTimeSinceCreatedMillis:J

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/NetworkEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 219
    return-void
.end method


# virtual methods
.method public build()Landroid/media/metrics/NetworkEvent;
    .registers 8

    .line 253
    new-instance v6, Landroid/media/metrics/NetworkEvent;

    iget v1, p0, Landroid/media/metrics/NetworkEvent$Builder;->mNetworkType:I

    iget-wide v2, p0, Landroid/media/metrics/NetworkEvent$Builder;->mTimeSinceCreatedMillis:J

    iget-object v4, p0, Landroid/media/metrics/NetworkEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/metrics/NetworkEvent;-><init>(IJLandroid/os/Bundle;Landroid/media/metrics/NetworkEvent-IA;)V

    .line 255
    .local v0, "o":Landroid/media/metrics/NetworkEvent;
    return-object v0
.end method

.method public setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/NetworkEvent$Builder;
    .registers 2
    .param p1, "metricsBundle"    # Landroid/os/Bundle;

    .line 247
    iput-object p1, p0, Landroid/media/metrics/NetworkEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 248
    return-object p0
.end method

.method public setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 225
    iput p1, p0, Landroid/media/metrics/NetworkEvent$Builder;->mNetworkType:I

    .line 226
    return-object p0
.end method

.method public setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 236
    iput-wide p1, p0, Landroid/media/metrics/NetworkEvent$Builder;->mTimeSinceCreatedMillis:J

    .line 237
    return-object p0
.end method
