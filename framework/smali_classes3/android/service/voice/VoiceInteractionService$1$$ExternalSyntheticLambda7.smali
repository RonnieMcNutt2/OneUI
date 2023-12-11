.class public final synthetic Landroid/service/voice/VoiceInteractionService$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/service/voice/VoiceInteractionService;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/service/voice/VoiceInteractionService;->onShowSessionFailed(Landroid/os/Bundle;)V

    return-void
.end method
