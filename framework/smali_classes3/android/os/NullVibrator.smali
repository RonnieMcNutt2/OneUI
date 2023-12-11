.class public Landroid/os/NullVibrator;
.super Landroid/os/Vibrator;
.source "NullVibrator.java"


# static fields
.field private static final sInstance:Landroid/os/NullVibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/os/NullVibrator;

    invoke-direct {v0}, Landroid/os/NullVibrator;-><init>()V

    sput-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Landroid/os/NullVibrator;
    .registers 1

    .line 31
    sget-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 56
    return-void
.end method

.method public cancel(I)V
    .registers 2
    .param p1, "usageFilter"    # I

    .line 60
    return-void
.end method

.method public hasAmplitudeControl()Z
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public hasVibrator()Z
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public isVibrating()Z
    .registers 2

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 52
    return-void
.end method
