.class public abstract Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 2
    .param p1, "acquireInfo"    # I

    .line 531
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 484
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 1

    .line 522
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 507
    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;)V
    .registers 2
    .param p1, "result"    # Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;

    .line 515
    return-void
.end method
