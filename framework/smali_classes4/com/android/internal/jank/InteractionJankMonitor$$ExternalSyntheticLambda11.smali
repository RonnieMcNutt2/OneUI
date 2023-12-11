.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final synthetic f$1:Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;->f$1:Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    iput p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;->f$2:I

    iput p4, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;->f$1:Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    iget v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;->f$2:I

    iget v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor;->$r8$lambda$lsFe5RR3XJqFq7wg1iZyFyWERTU(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;II)V

    return-void
.end method
