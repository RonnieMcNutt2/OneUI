.class public final synthetic Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

    iput p2, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

    iget v1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->$r8$lambda$v2v0FDwAEfDcch4Zyo992xzyA70(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;I)V

    return-void
.end method
