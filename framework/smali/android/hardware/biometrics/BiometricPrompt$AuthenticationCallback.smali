.class public abstract Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.super Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1133
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 2
    .param p1, "acquireInfo"    # I

    .line 1171
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 1142
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 1

    .line 1164
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 1152
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .registers 2
    .param p1, "result"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    .line 1158
    return-void
.end method

.method public onSystemEvent(I)V
    .registers 2
    .param p1, "event"    # I

    .line 1177
    return-void
.end method
