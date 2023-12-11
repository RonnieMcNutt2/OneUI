.class public final synthetic Landroid/telephony/satellite/SatelliteManager$13$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/satellite/SatelliteStateCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/satellite/SatelliteStateCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$13$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/satellite/SatelliteStateCallback;

    iput p2, p0, Landroid/telephony/satellite/SatelliteManager$13$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$13$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/satellite/SatelliteStateCallback;

    iget v1, p0, Landroid/telephony/satellite/SatelliteManager$13$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$13;->lambda$onSatelliteModemStateChanged$0(Landroid/telephony/satellite/SatelliteStateCallback;I)V

    return-void
.end method
