.class public final synthetic Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;


# direct methods
.method public synthetic constructor <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda4;->f$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda4;->f$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;

    check-cast p1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    invoke-static {v0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onRecognitionStarted$2(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V

    return-void
.end method
