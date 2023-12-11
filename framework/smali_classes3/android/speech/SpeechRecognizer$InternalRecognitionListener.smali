.class Landroid/speech/SpeechRecognizer$InternalRecognitionListener;
.super Landroid/speech/IRecognitionListener$Stub;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalRecognitionListener"
.end annotation


# static fields
.field private static final MSG_BEGINNING_OF_SPEECH:I = 0x1

.field private static final MSG_BUFFER_RECEIVED:I = 0x2

.field private static final MSG_END_OF_SPEECH:I = 0x3

.field private static final MSG_ERROR:I = 0x4

.field private static final MSG_LANGUAGE_DETECTION:I = 0xc

.field private static final MSG_ON_EVENT:I = 0x9

.field private static final MSG_PARTIAL_RESULTS:I = 0x7

.field private static final MSG_READY_FOR_SPEECH:I = 0x5

.field private static final MSG_RESULTS:I = 0x6

.field private static final MSG_RMS_CHANGED:I = 0x8

.field private static final MSG_SEGMENT_END_SESSION:I = 0xb

.field private static final MSG_SEGMENT_RESULTS:I = 0xa


# instance fields
.field private final mInternalHandler:Landroid/os/Handler;

.field private mInternalListener:Landroid/speech/RecognitionListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;
    .registers 1

    iget-object p0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalListener:Landroid/speech/RecognitionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;Landroid/speech/RecognitionListener;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalListener:Landroid/speech/RecognitionListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1023
    invoke-direct {p0}, Landroid/speech/IRecognitionListener$Stub;-><init>()V

    .line 1039
    new-instance v0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;-><init>(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/SpeechRecognizer$InternalRecognitionListener-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 3

    .line 1087
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1088
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 4
    .param p1, "buffer"    # [B

    .line 1091
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1092
    return-void
.end method

.method public onEndOfSegmentedSession()V
    .registers 3

    .line 1123
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1124
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 3

    .line 1095
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1096
    return-void
.end method

.method public onError(I)V
    .registers 5
    .param p1, "error"    # I

    .line 1099
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1100
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1131
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1, p1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1132
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1133
    return-void
.end method

.method public onLanguageDetection(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "results"    # Landroid/os/Bundle;

    .line 1127
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1128
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "results"    # Landroid/os/Bundle;

    .line 1111
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1112
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "noiseParams"    # Landroid/os/Bundle;

    .line 1103
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1104
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "results"    # Landroid/os/Bundle;

    .line 1107
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1108
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 5
    .param p1, "rmsdB"    # F

    .line 1115
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1116
    return-void
.end method

.method public onSegmentResults(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1119
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1120
    return-void
.end method
