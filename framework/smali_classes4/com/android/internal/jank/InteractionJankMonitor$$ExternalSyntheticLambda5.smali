.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;JJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;

    iput-wide p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;->f$1:J

    iput-wide p4, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;->f$2:J

    iput-wide p6, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;

    iget-wide v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;->f$1:J

    iget-wide v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;->f$2:J

    iget-wide v5, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;->f$3:J

    invoke-static/range {v0 .. v6}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$postEventLogToWorkerThread$11(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;JJJ)V

    return-void
.end method
