.class public final synthetic Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/LatencyTracker$Session;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/LatencyTracker$Session;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/LatencyTracker$Session;

    iput-object p2, p0, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/LatencyTracker$Session;

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/internal/util/LatencyTracker$Session;->$r8$lambda$qak-c34guWKD_FMaI6n7TLa0PRU(Lcom/android/internal/util/LatencyTracker$Session;Ljava/lang/Runnable;)V

    return-void
.end method
