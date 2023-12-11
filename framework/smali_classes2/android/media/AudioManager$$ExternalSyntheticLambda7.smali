.class public final synthetic Landroid/media/AudioManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    invoke-static {p1}, Landroid/media/AudioManager;->lambda$registerMuteAwaitConnectionCallback$5(Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;)V

    return-void
.end method
