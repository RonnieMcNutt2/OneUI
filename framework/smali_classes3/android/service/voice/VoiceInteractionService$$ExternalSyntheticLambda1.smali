.class public final synthetic Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    check-cast p1, Landroid/service/voice/HotwordDetector;

    invoke-static {v0, v1, p1}, Landroid/service/voice/VoiceInteractionService;->lambda$onDetectorRemoteException$0(ILandroid/os/IBinder;Landroid/service/voice/HotwordDetector;)V

    return-void
.end method
