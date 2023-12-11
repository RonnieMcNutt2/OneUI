.class public final synthetic Landroid/telephony/satellite/SatelliteManager$7$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

.field public final synthetic f$1:Landroid/telephony/satellite/PointingInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Landroid/telephony/satellite/PointingInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$7$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$7$$ExternalSyntheticLambda4;->f$1:Landroid/telephony/satellite/PointingInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$7$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$7$$ExternalSyntheticLambda4;->f$1:Landroid/telephony/satellite/PointingInfo;

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$7;->lambda$onSatellitePositionChanged$1(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Landroid/telephony/satellite/PointingInfo;)V

    return-void
.end method
