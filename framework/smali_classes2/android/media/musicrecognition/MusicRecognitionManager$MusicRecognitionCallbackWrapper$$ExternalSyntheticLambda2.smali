.class public final synthetic Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    invoke-interface {v0}, Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;->onAudioStreamClosed()V

    return-void
.end method
