.class public final synthetic Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/LatencyTracker;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/LatencyTracker;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/util/LatencyTracker;

    iput-object p2, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/util/LatencyTracker;->$r8$lambda$uPhaBjaIKsSqJgZ3Mw-LznEJiBg(Lcom/android/internal/util/LatencyTracker;Landroid/content/Context;)V

    return-void
.end method
