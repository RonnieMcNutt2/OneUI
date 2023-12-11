.class Landroid/os/HapticPlayer$RampParameter;
.super Ljava/lang/Object;
.source "HapticPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HapticPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RampParameter"
.end annotation


# instance fields
.field private final duration:I

.field private final endAmplitude:F

.field private final endFrequency:F

.field private final startAmplitude:F

.field private final startFrequency:F


# direct methods
.method constructor <init>(FFFFI)V
    .registers 6
    .param p1, "startAmplitude"    # F
    .param p2, "endAmplitude"    # F
    .param p3, "startFrequency"    # F
    .param p4, "endFrequency"    # F
    .param p5, "duration"    # I

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput p1, p0, Landroid/os/HapticPlayer$RampParameter;->startAmplitude:F

    .line 375
    iput p2, p0, Landroid/os/HapticPlayer$RampParameter;->endAmplitude:F

    .line 376
    iput p3, p0, Landroid/os/HapticPlayer$RampParameter;->startFrequency:F

    .line 377
    iput p4, p0, Landroid/os/HapticPlayer$RampParameter;->endFrequency:F

    .line 378
    iput p5, p0, Landroid/os/HapticPlayer$RampParameter;->duration:I

    .line 379
    return-void
.end method


# virtual methods
.method public getDuration()I
    .registers 2

    .line 382
    iget v0, p0, Landroid/os/HapticPlayer$RampParameter;->duration:I

    return v0
.end method

.method public getEndAmplitude()F
    .registers 2

    .line 390
    iget v0, p0, Landroid/os/HapticPlayer$RampParameter;->endAmplitude:F

    return v0
.end method

.method public getEndFrequency()F
    .registers 2

    .line 398
    iget v0, p0, Landroid/os/HapticPlayer$RampParameter;->endFrequency:F

    return v0
.end method

.method public getStartAmplitude()F
    .registers 2

    .line 386
    iget v0, p0, Landroid/os/HapticPlayer$RampParameter;->startAmplitude:F

    return v0
.end method

.method public getStartFrequency()F
    .registers 2

    .line 394
    iget v0, p0, Landroid/os/HapticPlayer$RampParameter;->startFrequency:F

    return v0
.end method
