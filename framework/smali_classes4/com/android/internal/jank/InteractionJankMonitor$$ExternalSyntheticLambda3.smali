.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/jank/InteractionJankMonitor;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iput p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->$r8$lambda$ZHyXbl8KmWXeWXNcSwF5r7pvrDM(Lcom/android/internal/jank/InteractionJankMonitor;I)V

    return-void
.end method
