.class public final synthetic Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/OutcomeReceiver;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    iput p2, p0, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    iget v1, p0, Landroid/telephony/satellite/SatelliteManager$4$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$4;->lambda$onReceiveResult$4(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method
