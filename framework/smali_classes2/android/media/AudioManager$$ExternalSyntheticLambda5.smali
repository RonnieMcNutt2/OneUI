.class public final synthetic Landroid/media/AudioManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioManager;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$$ExternalSyntheticLambda5;->f$0:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioManager$$ExternalSyntheticLambda5;->f$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->$r8$lambda$h5Y4UQlcDRAH3oOQKcch0FQSxjQ(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object v0

    return-object v0
.end method
