.class public abstract Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnrollmentCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(Z)V
    .registers 2
    .param p1, "isAcquiredGood"    # Z

    .line 565
    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 541
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 551
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .registers 2
    .param p1, "remaining"    # I

    .line 559
    return-void
.end method

.method public onPointerDown(I)V
    .registers 2
    .param p1, "sensorId"    # I

    .line 570
    return-void
.end method

.method public onPointerUp(I)V
    .registers 2
    .param p1, "sensorId"    # I

    .line 575
    return-void
.end method
