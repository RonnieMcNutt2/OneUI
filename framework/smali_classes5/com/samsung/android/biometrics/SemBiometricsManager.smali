.class public Lcom/samsung/android/biometrics/SemBiometricsManager;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$SecurityLevel;
    }
.end annotation


# static fields
.field public static final ACQUIRED_GOOD:I = 0x0

.field public static final ACQUIRED_HOLD_PHONE_CLOSER:I = 0x6

.field public static final ACQUIRED_HOLD_PHONE_FARTHER_AWAY:I = 0x7

.field public static final ACQUIRED_LIGHT_REFLECTION:I = 0x1

.field public static final ACQUIRED_LOW_LUMINANCE:I = 0x9

.field public static final ACQUIRED_MOVE_DOWN:I = 0x3

.field public static final ACQUIRED_MOVE_LEFT:I = 0x4

.field public static final ACQUIRED_MOVE_RIGHT:I = 0x5

.field public static final ACQUIRED_MOVE_UP:I = 0x2

.field public static final ACQUIRED_OPEN_EYES_FULLY:I = 0x8

.field public static final ACQUIRED_REVERSE_ORIENTATION:I = 0xa

.field public static final ERROR_CANCELED:I = 0x5

.field public static final ERROR_FACE_CAMERA_FAILURE:I = 0x6

.field public static final ERROR_FACE_CAMERA_UNAVAILABLE:I = 0x7

.field public static final ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final ERROR_IRIS_CAMERA_FAILURE:I = 0x8

.field public static final ERROR_IRIS_CAMERA_UNAVAILABLE:I = 0x9

.field public static final ERROR_LOCKOUT:I = 0xc

.field public static final ERROR_LOCKOUT_PERMANENT:I = 0xd

.field public static final ERROR_NO_SPACE:I = 0x4

.field public static final ERROR_PROXIMITY_ALERT:I = 0xb

.field public static final ERROR_TEMPLATE_CORRUPTED:I = 0xa

.field public static final ERROR_TIMEOUT:I = 0x3

.field public static final ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final ERROR_USER_CANCELED:I = 0xe

.field public static final EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field private static final MSG_ACQUIRED:I = 0x64

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x65

.field private static final MSG_ERROR:I = 0x67

.field public static final PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field public static final SECURITY_LEVEL_CONVENIENCE:I = 0x3

.field public static final SECURITY_LEVEL_NONE:I = 0x0

.field public static final SECURITY_LEVEL_STRONG:I = 0x1

.field public static final SECURITY_LEVEL_WEAK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemBiometricsManager"

.field public static final TYPE_HIGH_SECURITY:I = 0xf

.field public static final TYPE_NORMAL_SECURITY:I = 0x5

.field public static final TYPE_STRONG_SECURITY:I = 0x11


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 617
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 603
    invoke-static {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public authenticate(ILcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "crypto"    # Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 561
    return-void
.end method

.method public getAuthenticatorId()J
    .registers 3

    .line 582
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestSessionClose()V
    .registers 1

    .line 573
    return-void
.end method

.method public requestSessionOpen()V
    .registers 1

    .line 567
    return-void
.end method

.method public resetTimeout([B)V
    .registers 2
    .param p1, "token"    # [B

    .line 593
    return-void
.end method
