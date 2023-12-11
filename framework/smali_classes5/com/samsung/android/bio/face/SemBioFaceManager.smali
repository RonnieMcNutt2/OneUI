.class public Lcom/samsung/android/bio/face/SemBioFaceManager;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    }
.end annotation


# static fields
.field public static final BUNDLE_AUTH_COORDINATE_H:Ljava/lang/String; = "auth_coordinate_h"

.field public static final BUNDLE_AUTH_COORDINATE_TOKEN:Ljava/lang/String; = "auth_coordinate_token"

.field public static final BUNDLE_AUTH_COORDINATE_W:Ljava/lang/String; = "auth_coordinate_w"

.field public static final BUNDLE_AUTH_COORDINATE_X:Ljava/lang/String; = "auth_coordinate_x"

.field public static final BUNDLE_AUTH_COORDINATE_Y:Ljava/lang/String; = "auth_coordinate_y"

.field public static final BUNDLE_PREVIEW_ON_TOP:Ljava/lang/String; = "preview_on_top"

.field public static final BUNDLE_SET_SECURITY_LEVEL:Ljava/lang/String; = "security_level"

.field public static final BUNDLE_SET_TIMEOUT:Ljava/lang/String; = "set_timeout"

.field public static final BUNDLE_SKIP_WAKELOCK:Ljava/lang/String; = "skip_wakelock"

.field public static final BUNDLE_SUPPORT_AUTH_COORDINATE:Ljava/lang/String; = "support_auth_coordinate"

.field private static final DEBUG:Z

.field public static final EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field public static final FACE_ACQUIRED_FABK:I = 0x186a5

.field public static final FACE_ACQUIRED_FAKE:I = 0x4

.field public static final FACE_ACQUIRED_FAMO:I = 0x186a6

.field public static final FACE_ACQUIRED_GOOD:I = 0x0

.field public static final FACE_ACQUIRED_INVALID:I = 0x2

.field public static final FACE_ACQUIRED_LOW_QUALITY:I = 0x3

.field public static final FACE_ACQUIRED_MISALIGNED:I = 0x7

.field public static final FACE_ACQUIRED_MISALIGNED_BOTTOM:I = 0x3f5

.field public static final FACE_ACQUIRED_MISALIGNED_BOTTOM_LEFT:I = 0x3f4

.field public static final FACE_ACQUIRED_MISALIGNED_BOTTOM_RIGHT:I = 0x3f6

.field public static final FACE_ACQUIRED_MISALIGNED_LEFT:I = 0x3f1

.field public static final FACE_ACQUIRED_MISALIGNED_MIDDLE:I = 0x3f2

.field public static final FACE_ACQUIRED_MISALIGNED_RIGHT:I = 0x3f3

.field public static final FACE_ACQUIRED_MISALIGNED_TOP:I = 0x3ef

.field public static final FACE_ACQUIRED_MISALIGNED_TOP_LEFT:I = 0x3ee

.field public static final FACE_ACQUIRED_MISALIGNED_TOP_RIGHT:I = 0x3f0

.field public static final FACE_ACQUIRED_ON_MASK:I = 0x3f9

.field public static final FACE_ACQUIRED_PROCESS_FAIL:I = 0x1

.field public static final FACE_ACQUIRED_PROXIMITY_ALERT:I = 0x3e9

.field public static final FACE_ACQUIRED_REVERSE_ORIENTATION:I = 0x3ea

.field public static final FACE_ACQUIRED_SURFACE_UPDATED:I = 0x7d1

.field public static final FACE_ACQUIRED_TOO_BIG:I = 0x5

.field public static final FACE_ACQUIRED_TOO_DARK:I = 0x3f7

.field public static final FACE_ACQUIRED_TOO_SMALL:I = 0x6

.field public static final FACE_ACQUIRED_WITH_GLASSES:I = 0x3f8

.field public static final FACE_ERROR_CAMERA_ACCESS_SETTING_OFF:I = 0x186a3

.field public static final FACE_ERROR_CAMERA_FAILURE:I = 0x2713

.field public static final FACE_ERROR_CAMERA_UNAVAILABLE:I = 0x2715

.field public static final FACE_ERROR_CANCELED:I = 0x5

.field public static final FACE_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FACE_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final FACE_ERROR_LOCKOUT:I = 0x2711

.field public static final FACE_ERROR_LOCKOUT_PERMANENT:I = 0x2712

.field public static final FACE_ERROR_NO_SPACE:I = 0x4

.field public static final FACE_ERROR_ON_MASK:I = 0x3ee

.field public static final FACE_ERROR_PPP_TIMEOUT:I = 0x3ed

.field public static final FACE_ERROR_TEMPLATE_CORRUPTED:I = 0x3ec

.field public static final FACE_ERROR_TIMEOUT:I = 0x3

.field public static final FACE_ERROR_TOO_DARK:I = 0x186a1

.field public static final FACE_ERROR_TOO_DARK_TO_ENROLL:I = 0x186a2

.field public static final FACE_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FACE_ERROR_USER_CANCELED:I = 0xa

.field public static final FACE_OK:I = 0x0

.field public static final FLAG_ENROLL_WITHOUT_TOKEN:I = 0x1

.field public static final IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ERROR:I = 0x68

.field private static final PKG_NAME_DESKTOP_KEYGUARD:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static final PKG_NAME_KEYGUARD:Ljava/lang/String; = "com.android.systemui"

.field public static final PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field public static final PRIVILEGED_FLAG_USE_SETTING_FOR_SECURITY_LEVEL:I = 0x2

.field public static final SECURITY_LEVEL_CONVENIENCE:I = 0x3

.field public static final SECURITY_LEVEL_NONE:I = 0x0

.field public static final SECURITY_LEVEL_STRONG:I = 0x1

.field public static final SECURITY_LEVEL_WEAK:I = 0x2

.field public static final SEM_FACE_GET_TA_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemBioFaceManager"


# instance fields
.field private mAuthRequestId:J

.field private mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

.field private mHandler:Landroid/os/Handler;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAuthRequestId(Lcom/samsung/android/bio/face/SemBioFaceManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToken(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAuthRequestId(Lcom/samsung/android/bio/face/SemBioFaceManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAuthenticationCallback(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAcquiredResult(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendErrorResult(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendErrorResult(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$museHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->useHandler(Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetSepMappedError(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedError(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetSepMappedHelp(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedHelp(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 79
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    .line 383
    nop

    .line 384
    const-string/jumbo v0, "in_house"

    const-string/jumbo v1, "jdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

    .line 383
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    .line 390
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    .line 1495
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1496
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 1497
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    .line 1498
    return-void
.end method

.method private authenticateForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .registers 15
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "b"    # Landroid/os/Bundle;

    .line 1523
    if-eqz p4, :cond_1d

    .line 1526
    if-eqz p2, :cond_12

    .line 1527
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1528
    const-string v0, "SemBioFaceManager"

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void

    .line 1532
    :cond_12
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->biometricPromptForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 1533
    return-void

    .line 1524
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private biometricPromptForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .registers 21
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .param p6, "attr"    # Landroid/os/Bundle;

    .line 1550
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SemBioFaceManager"

    const-string v3, "biometricPromptForDex"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const v3, 0x1040619

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1553
    .local v2, "strTitle":Ljava/lang/String;
    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const v4, 0x1040617

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1555
    .local v3, "strCancel":Ljava/lang/String;
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 1556
    iput-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 1558
    new-instance v5, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v6, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 1559
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    .line 1560
    invoke-virtual {v5, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1561
    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v5, v3, v6, v7}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    .line 1567
    .local v5, "builder":Landroid/hardware/biometrics/BiometricPrompt$Builder;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 1568
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 1570
    invoke-virtual {v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v6

    .line 1572
    .local v6, "bp":Landroid/hardware/biometrics/BiometricPrompt;
    new-instance v7, Landroid/os/CancellationSignal;

    invoke-direct {v7}, Landroid/os/CancellationSignal;-><init>()V

    move-object v13, v7

    .line 1573
    .local v13, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v7, Lcom/samsung/android/bio/face/SemBioFaceManager$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$2;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v13, v7}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1582
    new-instance v11, Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    invoke-direct {v11, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$3;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    .line 1618
    .local v11, "authenticationCallback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    const/4 v7, 0x0

    if-eqz v1, :cond_69

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v8

    move-object v12, v8

    goto :goto_6a

    :cond_69
    move-object v12, v7

    .line 1620
    .local v12, "fidoRequestData":[B
    :goto_6a
    if-nez v1, :cond_6d

    goto :goto_71

    :cond_6d
    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v7

    :goto_71
    move-object v8, v7

    .line 1622
    .local v8, "cryptoForBp":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    iget-object v7, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    move-object v7, v6

    move-object v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/hardware/biometrics/BiometricPrompt;->semAuthenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;[B)V

    .line 1624
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1488
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1475
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSepMappedAcquiredInfo(II)I
    .registers 5
    .param p0, "acquireInfo"    # I
    .param p1, "vendorCode"    # I

    .line 1143
    move v0, p0

    .line 1145
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_8e

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSepMappedAcquiredInfo: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 1238
    :pswitch_29
    sparse-switch p1, :sswitch_data_c0

    goto :goto_5b

    .line 1282
    :sswitch_2d
    const v0, 0x186a6

    goto :goto_5b

    .line 1279
    :sswitch_31
    const v0, 0x186a5

    .line 1280
    goto :goto_5b

    .line 1276
    :sswitch_35
    const/16 v0, 0x3f9

    .line 1277
    goto :goto_5b

    .line 1273
    :sswitch_38
    const/16 v0, 0x3f8

    .line 1274
    goto :goto_5b

    .line 1270
    :sswitch_3b
    const/16 v0, 0x3f7

    .line 1271
    goto :goto_5b

    .line 1261
    :sswitch_3e
    const/16 v0, 0x3f6

    .line 1262
    goto :goto_5b

    .line 1258
    :sswitch_41
    const/16 v0, 0x3f5

    .line 1259
    goto :goto_5b

    .line 1255
    :sswitch_44
    const/16 v0, 0x3f4

    .line 1256
    goto :goto_5b

    .line 1252
    :sswitch_47
    const/16 v0, 0x3f3

    .line 1253
    goto :goto_5b

    .line 1249
    :sswitch_4a
    const/16 v0, 0x3f1

    .line 1250
    goto :goto_5b

    .line 1246
    :sswitch_4d
    const/16 v0, 0x3f0

    .line 1247
    goto :goto_5b

    .line 1243
    :sswitch_50
    const/16 v0, 0x3ef

    .line 1244
    goto :goto_5b

    .line 1240
    :sswitch_53
    const/16 v0, 0x3ee

    .line 1241
    goto :goto_5b

    .line 1267
    :sswitch_56
    const/4 v0, 0x4

    .line 1268
    goto :goto_5b

    .line 1264
    :sswitch_58
    const/16 v0, 0x3e9

    .line 1265
    nop

    .line 1285
    :goto_5b
    goto :goto_8c

    .line 1234
    :pswitch_5c
    const/4 v0, 0x3

    .line 1235
    goto :goto_8c

    .line 1231
    :pswitch_5e
    goto :goto_8c

    .line 1227
    :pswitch_5f
    const/4 v0, 0x2

    .line 1228
    goto :goto_8c

    .line 1223
    :pswitch_61
    const/4 v0, 0x7

    .line 1224
    goto :goto_8c

    .line 1219
    :pswitch_63
    const/4 v0, 0x7

    .line 1220
    goto :goto_8c

    .line 1215
    :pswitch_65
    const/4 v0, 0x7

    .line 1216
    goto :goto_8c

    .line 1211
    :pswitch_67
    move v0, p1

    .line 1212
    goto :goto_8c

    .line 1205
    :pswitch_69
    move v0, p1

    .line 1206
    goto :goto_8c

    .line 1199
    :pswitch_6b
    const/4 v0, 0x1

    .line 1200
    goto :goto_8c

    .line 1195
    :pswitch_6d
    const/4 v0, 0x7

    .line 1196
    goto :goto_8c

    .line 1191
    :pswitch_6f
    const/4 v0, 0x2

    .line 1192
    goto :goto_8c

    .line 1187
    :pswitch_71
    const/4 v0, 0x2

    .line 1188
    goto :goto_8c

    .line 1183
    :pswitch_73
    const/16 v0, 0x3f1

    .line 1184
    goto :goto_8c

    .line 1179
    :pswitch_76
    const/16 v0, 0x3f3

    .line 1180
    goto :goto_8c

    .line 1175
    :pswitch_79
    const/16 v0, 0x3f5

    .line 1176
    goto :goto_8c

    .line 1171
    :pswitch_7c
    const/16 v0, 0x3ef

    .line 1172
    goto :goto_8c

    .line 1167
    :pswitch_7f
    const/4 v0, 0x6

    .line 1168
    goto :goto_8c

    .line 1163
    :pswitch_81
    const/4 v0, 0x5

    .line 1164
    goto :goto_8c

    .line 1159
    :pswitch_83
    const/16 v0, 0x3f7

    .line 1160
    goto :goto_8c

    .line 1155
    :pswitch_86
    const/4 v0, 0x3

    .line 1156
    goto :goto_8c

    .line 1151
    :pswitch_88
    const/4 v0, 0x3

    .line 1152
    goto :goto_8c

    .line 1147
    :pswitch_8a
    const/4 v0, 0x0

    .line 1148
    nop

    .line 1292
    :goto_8c
    return v0

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_88
        :pswitch_86
        :pswitch_83
        :pswitch_81
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_71
        :pswitch_6f
        :pswitch_6d
        :pswitch_6b
        :pswitch_69
        :pswitch_67
        :pswitch_65
        :pswitch_63
        :pswitch_61
        :pswitch_5f
        :pswitch_5e
        :pswitch_5c
        :pswitch_29
    .end packed-switch

    :sswitch_data_c0
    .sparse-switch
        0x3e9 -> :sswitch_58
        0x3ed -> :sswitch_56
        0x3ee -> :sswitch_53
        0x3ef -> :sswitch_50
        0x3f0 -> :sswitch_4d
        0x3f1 -> :sswitch_4a
        0x3f3 -> :sswitch_47
        0x3f4 -> :sswitch_44
        0x3f5 -> :sswitch_41
        0x3f6 -> :sswitch_3e
        0x3f7 -> :sswitch_3b
        0x3f8 -> :sswitch_38
        0x3f9 -> :sswitch_35
        0x186a5 -> :sswitch_31
        0x186a6 -> :sswitch_2d
    .end sparse-switch
.end method

.method private static getSepMappedError(I)I
    .registers 4
    .param p0, "errCode"    # I

    .line 1627
    const/4 v0, 0x2

    .line 1628
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_2c

    .line 1652
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1643
    :pswitch_1e
    const/16 v0, 0xa

    .line 1644
    goto :goto_2a

    .line 1648
    :pswitch_21
    const/16 v0, 0x2711

    .line 1649
    goto :goto_2a

    .line 1638
    :pswitch_24
    const/4 v0, 0x5

    .line 1639
    goto :goto_2a

    .line 1634
    :pswitch_26
    const/4 v0, 0x3

    .line 1635
    goto :goto_2a

    .line 1630
    :pswitch_28
    const/4 v0, 0x1

    .line 1631
    nop

    .line 1655
    :goto_2a
    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_4
        :pswitch_26
        :pswitch_4
        :pswitch_24
        :pswitch_4
        :pswitch_21
        :pswitch_4
        :pswitch_21
        :pswitch_1e
        :pswitch_4
        :pswitch_4
        :pswitch_1e
    .end packed-switch
.end method

.method public static getSepMappedError(II)I
    .registers 5
    .param p0, "errCode"    # I
    .param p1, "vendorCode"    # I

    .line 1300
    move v0, p0

    .line 1302
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_6a

    .line 1388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 1384
    :pswitch_28
    const/4 v0, 0x2

    .line 1385
    goto :goto_68

    .line 1380
    :pswitch_2a
    const/16 v0, 0xa

    .line 1381
    goto :goto_68

    .line 1376
    :pswitch_2d
    const/4 v0, 0x1

    .line 1377
    goto :goto_68

    .line 1372
    :pswitch_2f
    const/4 v0, 0x2

    .line 1373
    goto :goto_68

    .line 1368
    :pswitch_31
    const/16 v0, 0xa

    .line 1369
    goto :goto_68

    .line 1364
    :pswitch_34
    const/16 v0, 0x2712

    .line 1365
    goto :goto_68

    .line 1332
    :pswitch_37
    sparse-switch p1, :sswitch_data_8a

    goto :goto_58

    .line 1358
    :sswitch_3b
    const v0, 0x186a3

    goto :goto_58

    .line 1355
    :sswitch_3f
    const v0, 0x186a2

    .line 1356
    goto :goto_58

    .line 1352
    :sswitch_43
    const v0, 0x186a1

    .line 1353
    goto :goto_58

    .line 1349
    :sswitch_47
    const/16 v0, 0x3ee

    .line 1350
    goto :goto_58

    .line 1346
    :sswitch_4a
    const/16 v0, 0x3ed

    .line 1347
    goto :goto_58

    .line 1343
    :sswitch_4d
    const/16 v0, 0x2715

    .line 1344
    goto :goto_58

    .line 1340
    :sswitch_50
    const/16 v0, 0x2713

    .line 1341
    goto :goto_58

    .line 1337
    :sswitch_53
    const/4 v0, 0x2

    .line 1338
    goto :goto_58

    .line 1334
    :sswitch_55
    const/16 v0, 0x3ec

    .line 1335
    nop

    .line 1361
    :goto_58
    goto :goto_68

    .line 1328
    :pswitch_59
    const/16 v0, 0x2711

    .line 1329
    goto :goto_68

    .line 1324
    :pswitch_5c
    const/4 v0, 0x2

    .line 1325
    goto :goto_68

    .line 1320
    :pswitch_5e
    const/4 v0, 0x5

    .line 1321
    goto :goto_68

    .line 1316
    :pswitch_60
    const/4 v0, 0x4

    .line 1317
    goto :goto_68

    .line 1312
    :pswitch_62
    const/4 v0, 0x3

    .line 1313
    goto :goto_68

    .line 1308
    :pswitch_64
    const/4 v0, 0x2

    .line 1309
    goto :goto_68

    .line 1304
    :pswitch_66
    const/4 v0, 0x1

    .line 1305
    nop

    .line 1392
    :goto_68
    return v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_66
        :pswitch_64
        :pswitch_62
        :pswitch_60
        :pswitch_5e
        :pswitch_5c
        :pswitch_59
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_2a
        :pswitch_28
    .end packed-switch

    :sswitch_data_8a
    .sparse-switch
        0x3e9 -> :sswitch_55
        0x3ea -> :sswitch_53
        0x3eb -> :sswitch_50
        0x3ec -> :sswitch_4d
        0x3ed -> :sswitch_4a
        0x3ee -> :sswitch_47
        0x186a1 -> :sswitch_43
        0x186a2 -> :sswitch_3f
        0x186a3 -> :sswitch_3b
    .end sparse-switch
.end method

.method private static getSepMappedHelp(I)I
    .registers 4
    .param p0, "errCode"    # I

    .line 1659
    const/4 v0, 0x0

    .line 1660
    .local v0, "ret":I
    nop

    .line 1662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    return v0
.end method

.method private isDesktopMode(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1536
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1537
    return v0

    .line 1539
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1540
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    move v0, v3

    :cond_12
    return v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .registers 3
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 1544
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.samsung.desktopsystemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private sendAcquiredResult(ILjava/lang/String;)V
    .registers 4
    .param p1, "acquireInfo"    # I
    .param p2, "helpMsg"    # Ljava/lang/String;

    .line 1456
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_e

    .line 1457
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 1458
    if-eqz p2, :cond_e

    .line 1459
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 1462
    :cond_e
    return-void
.end method

.method private sendAuthenticatedFailed()V
    .registers 2

    .line 1450
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_7

    .line 1451
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 1453
    :cond_7
    return-void
.end method

.method private sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .registers 3
    .param p1, "result"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    .line 1444
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_7

    .line 1445
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    .line 1447
    :cond_7
    return-void
.end method

.method private sendErrorResult(ILjava/lang/String;)V
    .registers 4
    .param p1, "errMsgId"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 1437
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_7

    .line 1438
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 1440
    :cond_7
    return-void
.end method

.method public static setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 1505
    if-nez p1, :cond_3

    .line 1506
    return-void

    .line 1509
    :cond_3
    :try_start_3
    const-string v0, "DISPLAY_TYPE"

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_11

    .line 1512
    goto :goto_2f

    .line 1510
    :catch_11
    move-exception v0

    .line 1511
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExtraInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method private useHandler(Landroid/os/Handler;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;

    .line 751
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 752
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_2a

    .line 753
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2a

    .line 754
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 756
    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/CancellationSignal;Landroid/os/Handler;ILandroid/view/Surface;[BLcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V
    .registers 7
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I
    .param p4, "previewSurface"    # Landroid/view/Surface;
    .param p5, "requestData"    # [B
    .param p6, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 833
    return-void
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .registers 19
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "faceView"    # Landroid/view/View;

    .line 803
    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 804
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticateForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 805
    return-void

    .line 808
    :cond_19
    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 809
    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hAuthenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 811
    return-void

    .line 813
    :cond_30
    return-void
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .registers 18
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "faceView"    # Landroid/view/View;

    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p6, :cond_e

    .line 786
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 787
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_e

    .line 788
    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    .line 791
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_e
    move-object v10, p0

    iget-object v1, v10, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object v8, v0

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 792
    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .registers 10
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .line 878
    const-string v0, "SemBioFaceManager"

    const-string v1, "enroll() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V
    .registers 8
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p5, "faceView"    # Landroid/view/View;

    .line 869
    const-string v0, "SemBioFaceManager"

    const-string v1, "enroll() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void
.end method

.method public getEnrolledFaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    .line 991
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFaces(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    .line 977
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 978
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 980
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecurityLevel()I
    .registers 2

    .line 1123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSecurityLevel(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getSecurityLevel(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1131
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_d

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    .line 1132
    .local v1, "isKeyguard":Z
    :goto_d
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1133
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetSecurityLevel(Z)I

    move-result v0

    return v0

    .line 1135
    :cond_1c
    return v0
.end method

.method public getTaVersionCode()Ljava/lang/String;
    .registers 2

    .line 848
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDisabledFaces()Z
    .registers 2

    .line 1013
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    .line 1014
    const/4 v0, 0x0

    return v0
.end method

.method public hasEnrolledFaces()Z
    .registers 2

    .line 1002
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1003
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hasEnrolledTemplates()Z

    move-result v0

    return v0

    .line 1005
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public hasEnrolledFaces(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1031
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1032
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0

    .line 1034
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareDetected()Z
    .registers 2

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1046
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->isHardwareDetected()Z

    move-result v0

    return v0

    .line 1048
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public postEnroll()I
    .registers 3

    .line 919
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "postEnroll() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x0

    return v0
.end method

.method public preEnroll()J
    .registers 3

    .line 890
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "preEnroll() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;

    .line 907
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "preEnroll() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .registers 6
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 946
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "remove() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    return-void
.end method

.method public remove(Lcom/samsung/android/bio/face/SemBioFace;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .registers 5
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 952
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "remove() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .registers 6
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .line 965
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "rename() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return-void
.end method

.method public resetAuthenticationTimeout()Z
    .registers 3

    .line 1114
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "resetAuthenticationTimeout() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/4 v0, 0x0

    return v0
.end method

.method public resume()V
    .registers 1

    .line 840
    return-void
.end method

.method public setActiveUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 931
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "setActiveUser() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return-void
.end method
