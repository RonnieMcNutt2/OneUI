.class public final synthetic Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

.field public final synthetic f$1:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    iput-object p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-static {v0, v1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->$r8$lambda$TJYktdeOTBpEfDKdkQal4-CaY7Y(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;)V

    return-void
.end method
