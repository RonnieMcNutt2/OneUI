.class Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
.super Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;
.source "SemMotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/SemMotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRListenerDelegate"
.end annotation


# instance fields
.field private final EVENT_FROM_SERVICE:I

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field private mListenerPackageName:Ljava/lang/String;

.field private mMotionEvents:I

.field final synthetic this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V
    .registers 7
    .param p2, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p3, "motion_sensors"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 786
    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-direct {p0}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;-><init>()V

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    .line 779
    const/16 v0, 0x35

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->EVENT_FROM_SERVICE:I

    .line 787
    iput-object p2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    .line 788
    if-eqz p4, :cond_15

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_19

    :cond_15
    invoke-static {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetmMainLooper(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Landroid/os/Looper;

    move-result-object v0

    .line 789
    .local v0, "looper":Landroid/os/Looper;
    :goto_19
    iput p3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    .line 792
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    .line 795
    new-instance v1, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 812
    return-void
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/gesture/SemMotionEventListener;
    .registers 2

    .line 818
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .registers 2

    .line 849
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenerPackageName()Ljava/lang/String;
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionEvents()I
    .registers 2

    .line 825
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    return v0
.end method

.method public motionCallback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .registers 4
    .param p1, "motionEvent"    # Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 839
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 840
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    .line 841
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 842
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 843
    return-void
.end method

.method public resetListener()V
    .registers 2

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    .line 863
    return-void
.end method

.method public setMotionEvents(I)V
    .registers 2
    .param p1, "motionevents"    # I

    .line 832
    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->mMotionEvents:I

    .line 833
    return-void
.end method
