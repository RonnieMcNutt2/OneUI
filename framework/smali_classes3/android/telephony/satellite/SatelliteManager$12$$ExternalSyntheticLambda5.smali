.class public final synthetic Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/OutcomeReceiver;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda5;->f$0:Landroid/os/OutcomeReceiver;

    iput-boolean p2, p0, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda5;->f$0:Landroid/os/OutcomeReceiver;

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$12;->lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;Z)V

    return-void
.end method
