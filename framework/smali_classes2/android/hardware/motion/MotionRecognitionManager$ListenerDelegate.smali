.class Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field private final moldListener:Landroid/hardware/motion/MRListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmoldListener(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Landroid/hardware/motion/MRListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->moldListener:Landroid/hardware/motion/MRListener;

    return-object p0
.end method

.method private constructor <init>(Landroid/hardware/motion/MRListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate$1;-><init>(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->mListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    .line 212
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->moldListener:Landroid/hardware/motion/MRListener;

    .line 213
    return-void
.end method
