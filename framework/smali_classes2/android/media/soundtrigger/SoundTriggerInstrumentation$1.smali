.class Landroid/media/soundtrigger/SoundTriggerInstrumentation$1;
.super Landroid/media/soundtrigger_middleware/IAcknowledgeEvent$Stub;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;->setResourceContention(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

.field final synthetic val$signal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    .line 638
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$1;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$1;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/IAcknowledgeEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public eventReceived()V
    .registers 2

    .line 641
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$1;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 642
    return-void
.end method
