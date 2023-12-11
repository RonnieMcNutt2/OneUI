.class public abstract Landroid/hardware/face/FaceManager$AuthenticationCallback;
.super Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1163
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 2
    .param p1, "acquireInfo"    # I

    .line 1222
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 1174
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 1

    .line 1213
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 1185
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .registers 2
    .param p1, "result"    # Landroid/hardware/face/FaceManager$AuthenticationResult;

    .line 1193
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;[B)V
    .registers 3
    .param p1, "result"    # Landroid/hardware/face/FaceManager$AuthenticationResult;
    .param p2, "fidoResultData"    # [B

    .line 1198
    return-void
.end method

.method public onAuthenticationSucceededWithBundle(Landroid/hardware/face/FaceManager$AuthenticationResult;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "result"    # Landroid/hardware/face/FaceManager$AuthenticationResult;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 1202
    return-void
.end method

.method public onImageProcessed(IIIILandroid/os/Bundle;)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I
    .param p4, "imageFormat"    # I
    .param p5, "b"    # Landroid/os/Bundle;

    .line 1206
    return-void
.end method
