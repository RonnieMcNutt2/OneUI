.class public final synthetic Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/procstats/ProcessStats;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/app/procstats/StatsEventOutput;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;ILcom/android/internal/app/procstats/StatsEventOutput;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/procstats/ProcessStats;

    iput p2, p0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/app/procstats/StatsEventOutput;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/app/procstats/StatsEventOutput;

    check-cast p1, Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/app/procstats/ProcessStats;->$r8$lambda$xHOIJeZnEUbScbkQs0M-usQWML0(Lcom/android/internal/app/procstats/ProcessStats;ILcom/android/internal/app/procstats/StatsEventOutput;Lcom/android/internal/app/procstats/ProcessState;)V

    return-void
.end method
