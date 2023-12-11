.class public final synthetic Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;


# direct methods
.method public synthetic constructor <init>(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    invoke-interface {v0}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;->onPrintServiceRecommendationsChanged()V

    return-void
.end method
