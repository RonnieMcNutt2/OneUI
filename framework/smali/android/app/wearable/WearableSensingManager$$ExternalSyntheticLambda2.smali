.class public final synthetic Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Landroid/app/wearable/WearableSensingManager;->lambda$provideData$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
