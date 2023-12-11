.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(JJJ)V
    .registers 14

    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;->f$0:I

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$cancel$8(IJJJ)V

    return-void
.end method
