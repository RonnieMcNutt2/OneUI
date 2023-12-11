.class public final synthetic Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method public synthetic constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda4;->f$0:Landroid/service/voice/VoiceInteractionService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda4;->f$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->$r8$lambda$EBopvdfAUuOAhyfeH9ydSzgLCM4(Landroid/service/voice/VoiceInteractionService;)V

    return-void
.end method
