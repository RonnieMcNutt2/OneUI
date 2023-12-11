.class public final synthetic Landroid/media/AudioManager$StreamAliasingDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callbackMethod(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/media/AudioManager$StreamAliasingDispatcherStub;->lambda$dispatchStreamAliasingChanged$0(Ljava/lang/Runnable;)V

    return-void
.end method
