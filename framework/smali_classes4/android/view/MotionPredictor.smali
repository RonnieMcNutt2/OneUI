.class public final Landroid/view/MotionPredictor;
.super Ljava/lang/Object;
.source "MotionPredictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionPredictor$RegistryHolder;
    }
.end annotation


# instance fields
.field private final mIsPredictionEnabled:Z

.field private final mPtr:J


# direct methods
.method static bridge synthetic -$$Nest$smnativeGetNativeMotionPredictorFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/MotionPredictor;->nativeGetNativeMotionPredictorFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/MotionPredictor;->mIsPredictionEnabled:Z

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 64
    .local v0, "offsetNanos":I
    invoke-static {v0}, Landroid/view/MotionPredictor;->nativeInitialize(I)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/MotionPredictor;->mPtr:J

    .line 65
    sget-object v3, Landroid/view/MotionPredictor$RegistryHolder;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v3, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method private static native nativeGetNativeMotionPredictorFinalizer()J
.end method

.method private static native nativeInitialize(I)J
.end method

.method private static native nativeIsPredictionAvailable(JII)Z
.end method

.method private static native nativePredict(JJ)Landroid/view/MotionEvent;
.end method

.method private static native nativeRecord(JLandroid/view/MotionEvent;)V
.end method


# virtual methods
.method public isPredictionAvailable(II)Z
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "source"    # I

    .line 116
    iget-boolean v0, p0, Landroid/view/MotionPredictor;->mIsPredictionEnabled:Z

    if-eqz v0, :cond_e

    iget-wide v0, p0, Landroid/view/MotionPredictor;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionPredictor;->nativeIsPredictionAvailable(JII)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public predict(J)Landroid/view/MotionEvent;
    .registers 5
    .param p1, "predictionTimeNanos"    # J

    .line 99
    iget-boolean v0, p0, Landroid/view/MotionPredictor;->mIsPredictionEnabled:Z

    if-nez v0, :cond_6

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_6
    iget-wide v0, p0, Landroid/view/MotionPredictor;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionPredictor;->nativePredict(JJ)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public record(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 78
    iget-boolean v0, p0, Landroid/view/MotionPredictor;->mIsPredictionEnabled:Z

    if-nez v0, :cond_5

    .line 79
    return-void

    .line 81
    :cond_5
    iget-wide v0, p0, Landroid/view/MotionPredictor;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionPredictor;->nativeRecord(JLandroid/view/MotionEvent;)V

    .line 82
    return-void
.end method
