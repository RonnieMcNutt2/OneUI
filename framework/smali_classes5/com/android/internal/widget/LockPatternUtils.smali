.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;,
        Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;,
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;,
        Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;,
        Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;,
        Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;,
        Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;,
        Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;,
        Lcom/android/internal/widget/LockPatternUtils$VerifyFlag;,
        Lcom/android/internal/widget/LockPatternUtils$CredentialType;
    }
.end annotation


# static fields
.field private static final APP_LOCK_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.applock_fingerprint"

.field public static final ATTEMPTS_BEFORE_AUTO_WIPE:I = 0x14

.field public static final AUTO_PIN_CONFIRM:Ljava/lang/String; = "lockscreen.auto_pin_confirm"

.field public static final BIOMETRIC_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockout_biometric_attempt_deadline"

.field public static final BIOMETRIC_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockout_biometric_attempt_timeoutms"

.field public static final BIOMETRIC_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.samsung_biometric"

.field public static final BIOMETRIC_STATE_OFF:I = 0x0

.field public static final BIOMETRIC_STATE_ON:I = 0x1

.field public static final BIOMETRIC_TYPE_ALL:I = 0x101

.field public static final BIOMETRIC_TYPE_FACE:I = 0x100

.field public static final BIOMETRIC_TYPE_FINGERPRINT:I = 0x1

.field public static final BIOMETRIC_TYPE_NONE:I = 0x0

.field private static final CREDENTIAL_TYPE_API:Ljava/lang/String; = "getCredentialType"

.field public static final CREDENTIAL_TYPE_NONE:I = -0x1

.field public static final CREDENTIAL_TYPE_PASSWORD:I = 0x4

.field public static final CREDENTIAL_TYPE_PASSWORD_OR_PIN:I = 0x2

.field public static final CREDENTIAL_TYPE_PATTERN:I = 0x1

.field public static final CREDENTIAL_TYPE_PIN:I = 0x3

.field public static final CREDENTIAL_TYPE_SMARTCARDNUMERIC:I = 0x6

.field public static final CURRENT_LSKF_BASED_PROTECTOR_ID_KEY:Ljava/lang/String; = "sp-handle"

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final DUAL_DAR_DO_OPT_PENDING_UNLOCK:I = 0x1

.field private static final ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final ENCRYPTED_REMOTE_CREDENTIALS_HEADER:[B

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FLAG_ENABLE_AUTO_PIN_CONFIRMATION:Ljava/lang/String; = "AutoPinConfirmation__enable_auto_pin_confirmation"

.field private static final FMM_FAIELD_ATTEMPT_KEY:Ljava/lang/String; = "lockscreen.failed_fmm_attempts"

.field public static final FMM_LOCK:I = 0x0

.field private static final FRP_CREDENTIAL_ENABLED:Z = true

.field private static final IS_TRUST_USUALLY_MANAGED:Ljava/lang/String; = "lockscreen.istrustusuallymanaged"

.field private static final KNOWN_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.knowntrustagents"

.field public static final KNOX_DEVICE_OWNER_KEY:Ljava/lang/String; = "knox.device_owner"

.field public static final KNOX_GUARD:I = 0x3

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockoutattempttimeoutmss"

.field public static final LOCKSCREEN_FOLDER_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.folder_instantly_locks"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_PIN_ENHANCED_PRIVACY:Ljava/lang/String; = "pin_enhanced_privacy"

.field public static final LOCK_SCREEN_DEVICE_OWNER_INFO:Ljava/lang/String; = "lockscreen.device_owner_info"

.field public static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field public static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MIGRATED_MDFPP_PWD_DATA:Ljava/lang/String; = "migrated_mdfpp_pwd_data"

.field public static final MIN_AUTO_PIN_REQUIREMENT_LENGTH:I = 0x6

.field public static final MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final NON_STRONG_BIO_IDLE_TIMEOUT:Ljava/lang/String; = "lockscreen.non_strong_bio_idle_timeout"

.field public static final NON_STRONG_BIO_TIMEOUT:Ljava/lang/String; = "lockscreen.non_strong_bio_timeout"

.field private static final PASSWORD_HINT_KEY:Ljava/lang/String; = "lockscreen.password_hint"

.field public static final PASSWORD_HISTORY_DELIMITER:Ljava/lang/String; = ","

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final PIN_LENGTH_UNAVAILABLE:I = -0x1

.field public static final REMOTELOCK_SIZE:I = 0x4

.field public static final REMOTELOCK_SYSTEMUI:I = 0x4

.field public static final REMOTELOCK_SYSTEMUI_DESKTOP:I = 0x5

.field public static final RMM_LOCK:I = 0x2

.field public static final SDP_MDFPPMODE_ENABLED_FOR_SYSTEM_KEY:Ljava/lang/String; = "sdp-mdfppmode-for-system"

.field public static final SECURE_STATE_BIO:I = 0x10

.field public static final SECURE_STATE_BIO_LOCKOUT:I = 0x40

.field public static final SECURE_STATE_CARRIER:I = 0x8

.field public static final SECURE_STATE_CLEAR_LOCK:I = 0x1

.field public static final SECURE_STATE_CREDENTIAL_TYPE:I = 0x2

.field public static final SECURE_STATE_DEVICE_OWNERINFO:I = 0x100

.field public static final SECURE_STATE_FMM:I = 0x4

.field public static final SECURE_STATE_LOCKOUT:I = 0x20

.field public static final SECURE_STATE_LOCK_DISABLED:I = 0x200

.field public static final SECURE_STATE_OWNERINFO:I = 0x80

.field public static final SECURE_STATE_UPDATE_ALL:I = 0xffe

.field public static final SECURITY_ADDITIONAL_LOG:Z = true

.field public static final SECURITY_AOSP_BUG_FIX:Z = true

.field public static final SECURITY_BIOMETRICS:Z = true

.field public static final SECURITY_CACHED_LOCK_STATE:Z = true

.field public static final SECURITY_DEBUG_DEV:I = 0x2

.field public static final SECURITY_DEBUG_LOW:I = 0x0

.field public static final SECURITY_DEBUG_MID:I = 0x1

.field public static final SECURITY_PASSWORD_HINT:Z = true

.field public static final SECURITY_POLICY:Z = true

.field public static final SECURITY_REMOTE_LOCKSCREEN:Z = true

.field public static final SECURITY_SIMPLE_PIN:Z = true

.field public static final SKT_CARRIER_LOCK:I = 0x1

.field private static final SKT_CARRIER_LOCK_MODE_FILE:Ljava/lang/String; = "/efs/sms/sktcarrierlockmode"

.field private static final SKT_LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "sktlockscreen.lockoutdeadline"

.field private static final SKT_LOCKOUT_ATTEMPT_DEFAULT_TIMEOUT:J = 0x927c0L

.field public static final STRONG_BIO_TIMEOUT:Ljava/lang/String; = "lockscreen.strong_bio_timeout"

.field public static final SYNTHETIC_PASSWORD_ENABLED_FOR_SYSTEM_KEY:Ljava/lang/String; = "enable-sp-for-system"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final TEXT_SEPERATOR:C = ':'

.field public static final USER_FRP:I = -0x270f

.field public static final VERIFY_FLAG_REQUEST_GK_PW_HANDLE:I = 0x1


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCredentialTypeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHasSecureLockScreen:Ljava/lang/Boolean;

.field private mLockPatternUtilForDualDarDo:Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mLockoutDeadlines:Landroid/util/SparseLongArray;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserManagerCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mcheckCredentialForDualDarDo(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 162
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 163
    const-string v1, "encrypted_remote_credentials"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->ENCRYPTED_REMOTE_CREDENTIALS_HEADER:[B

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManagerCache:Ljava/util/HashMap;

    .line 1324
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 1349
    new-instance v0, Landroid/app/PropertyInvalidatedCache;

    const/4 v2, 0x4

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "getCredentialType"

    const-string/jumbo v5, "getCredentialType"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;

    .line 380
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 383
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 384
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_3e

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    .line 385
    return-void
.end method

.method public static byteArrayToPattern([B)Ljava/util/List;
    .registers 6
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .line 1274
    if-nez p0, :cond_4

    .line 1275
    const/4 v0, 0x0

    return-object v0

    .line 1278
    :cond_4
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1280
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    .line 1281
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, -0x31

    int-to-byte v2, v2

    .line 1282
    .local v2, "b":B
    div-int/lit8 v3, v2, 0x3

    rem-int/lit8 v4, v2, 0x3

    invoke-static {v3, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1284
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method

.method private checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "option"    # I
    .param p4, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 3217
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 3219
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 3220
    invoke-direct {p0, p4}, Lcom/android/internal/widget/LockPatternUtils;->wrapCallbackForDualDar(Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    move-result-object v2

    .line 3219
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 3222
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_18

    .line 3223
    return v3

    .line 3224
    :cond_18
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v3, :cond_32

    .line 3226
    nop

    .line 3227
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    if-lez v2, :cond_28

    .line 3228
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordThrottleAuditLog(I)V

    .line 3230
    :cond_28
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    .end local p3    # "option":I
    .end local p4    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;
    throw v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_32} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_32} :catch_33

    .line 3232
    .restart local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    .restart local p3    # "option":I
    .restart local p4    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;
    :cond_32
    return v0

    .line 3234
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_33
    move-exception v1

    .line 3235
    .local v1, "re":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    const-string v3, "failed to check dualdar do credential"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3236
    return v0
.end method

.method private checkCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    move-object v0, v2

    .line 657
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    .line 658
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v3

    .line 657
    invoke-interface {v2, v0, p2, v3}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_13} :catch_4d
    .catchall {:try_start_2 .. :try_end_13} :catchall_4b

    .line 659
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v2, :cond_1c

    .line 660
    nop

    .line 682
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 660
    :cond_1b
    return v1

    .line 661
    :cond_1c
    :try_start_1c
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_20} :catch_4d
    .catchall {:try_start_1c .. :try_end_20} :catchall_4b

    const/4 v4, 0x1

    if-nez v3, :cond_2a

    .line 662
    nop

    .line 682
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 662
    :cond_29
    return v4

    .line 663
    :cond_2a
    :try_start_2a
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v4, :cond_44

    .line 665
    nop

    .line 666
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    if-lez v3, :cond_3a

    .line 667
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordThrottleAuditLog(I)V

    .line 669
    :cond_3a
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    .end local v0    # "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    .end local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    throw v3
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_44} :catch_4d
    .catchall {:try_start_2a .. :try_end_44} :catchall_4b

    .line 671
    .restart local v0    # "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    .restart local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    :cond_44
    nop

    .line 682
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 671
    :cond_4a
    return v1

    .line 682
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_4b
    move-exception v1

    goto :goto_60

    .line 673
    :catch_4d
    move-exception v2

    .line 675
    .local v2, "re":Ljava/lang/RuntimeException;
    :try_start_4e
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 676
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_4b

    .line 677
    nop

    .line 682
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 677
    :cond_5d
    return v1

    .line 680
    :cond_5e
    nop

    .end local v0    # "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    .end local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    :try_start_5f
    throw v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_4b

    .line 682
    .end local v2    # "re":Ljava/lang/RuntimeException;
    .restart local v0    # "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    .restart local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    :goto_60
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 683
    :cond_65
    throw v1
.end method

.method private clearBiometricAndLockState(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .line 2916
    const-string v0, "LockPatternUtils"

    :try_start_2
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v3, "LockSettingsWrite"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_2f

    .line 2920
    nop

    .line 2921
    const/16 v1, 0x101

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 2922
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 2925
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline(I)V

    .line 2929
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setPasswordHint(Ljava/lang/String;I)V

    .line 2933
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearFailedFMMUnlockAttempt(I)V

    .line 2936
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword([BI)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 2939
    goto :goto_2e

    .line 2937
    :catch_27
    move-exception v1

    .line 2938
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setLockFMMPassword error = "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2941
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2e
    return-void

    .line 2917
    :catch_2f
    move-exception v1

    .line 2918
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Failed to clearBiometricAndLockState ="

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2919
    return-void
.end method

.method public static credentialTypeToPasswordQuality(I)I
    .registers 4
    .param p0, "credentialType"    # I

    .line 941
    packed-switch p0, :pswitch_data_2a

    .line 955
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :pswitch_1c
    const/high16 v0, 0x70000

    return v0

    .line 949
    :pswitch_1f
    const/high16 v0, 0x40000

    return v0

    .line 947
    :pswitch_22
    const/high16 v0, 0x20000

    return v0

    .line 945
    :pswitch_25
    const/high16 v0, 0x10000

    return v0

    .line 943
    :pswitch_28
    const/4 v0, 0x0

    return v0

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_28
        :pswitch_3
        :pswitch_25
        :pswitch_3
        :pswitch_22
        :pswitch_1f
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method public static credentialTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "credentialType"    # I

    .line 176
    packed-switch p0, :pswitch_data_26

    .line 190
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_17
    const-string v0, "SMARTCARDNUMERIC"

    return-object v0

    .line 184
    :pswitch_1a
    const-string v0, "PASSWORD"

    return-object v0

    .line 182
    :pswitch_1d
    const-string v0, "PIN"

    return-object v0

    .line 180
    :pswitch_20
    const-string v0, "PATTERN"

    return-object v0

    .line 178
    :pswitch_23
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_26
    .packed-switch -0x1
        :pswitch_23
        :pswitch_3
        :pswitch_20
        :pswitch_3
        :pswitch_1d
        :pswitch_1a
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method private deserializeTrustAgents(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "serializedTrustAgents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1620
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1623
    :cond_c
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1624
    .local v0, "split":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1625
    .local v1, "trustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_2e

    aget-object v4, v0, v3

    .line 1626
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1627
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    .end local v4    # "s":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1630
    :cond_2e
    return-object v1
.end method

.method public static frpCredentialEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2363
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .registers 5
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .line 1522
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1523
    :catch_9
    move-exception v0

    .line 1524
    .local v0, "re":Landroid/os/RemoteException;
    return p2
.end method

.method private getDarManagerService()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/knox/dar/IDarManagerService;",
            ">;"
        }
    .end annotation

    .line 3020
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v0, :cond_11

    .line 3021
    nop

    .line 3022
    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    .line 3023
    .local v0, "service":Lcom/samsung/android/knox/dar/IDarManagerService;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 3025
    .end local v0    # "service":Lcom/samsung/android/knox/dar/IDarManagerService;
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;
    .registers 4

    .line 1834
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 1835
    .local v0, "service":Lcom/android/internal/widget/LockSettingsInternal;
    if-eqz v0, :cond_b

    .line 1838
    return-object v0

    .line 1836
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to system server itself"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLong(Ljava/lang/String;JI)J
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .line 1539
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 1540
    :catch_9
    move-exception v0

    .line 1541
    .local v0, "re":Landroid/os/RemoteException;
    return-wide p2
.end method

.method private getPasswordHistoryHashFactorForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .registers 5
    .param p1, "currentPassword"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    const/4 v0, 0x0

    .line 750
    .local v0, "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    move-object v0, v1

    .line 751
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/internal/widget/ILockSettings;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    .line 753
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 751
    :cond_13
    return-object v1

    .line 753
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 754
    :cond_1a
    throw v1
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 434
    nop

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 436
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0

    .line 438
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I

    .line 1307
    const-string/jumbo v0, "lockscreen.password_salt"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 1308
    .local v3, "salt":J
    cmp-long v1, v3, v1

    if-nez v1, :cond_3d

    .line 1310
    :try_start_d
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    move-wide v3, v1

    .line 1311
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1312
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized lock password salt for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_33} :catch_34

    .line 1316
    goto :goto_3d

    .line 1313
    :catch_34
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1318
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_3d
    :goto_3d
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 1558
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    return-object v0

    .line 1559
    :catch_a
    move-exception v1

    .line 1560
    .local v1, "re":Landroid/os/RemoteException;
    return-object v0
.end method

.method private getTrustManager()Landroid/app/trust/TrustManager;
    .registers 5

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "trust"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 371
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_1b

    .line 372
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Stack trace:"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "LockPatternUtils"

    const-string v3, "Can\'t get TrustManagerService: is it running?"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    :cond_1b
    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 348
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    .line 350
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private getUserManager(I)Landroid/os/UserManager;
    .registers 7
    .param p1, "userId"    # I

    .line 354
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 355
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 356
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    return-object v1

    .line 360
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "system"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 361
    .local v1, "userContext":Landroid/content/Context;
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 362
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_2c} :catch_2d

    .line 363
    return-object v2

    .line 364
    .end local v1    # "userContext":Landroid/content/Context;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :catch_2d
    move-exception v1

    .line 365
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create context for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private hasSeparateChallenge(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .line 1251
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getSeparateProfileChallengeEnabled(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1252
    :catch_9
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Couldn\'t get separate profile challenge enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/4 v1, 0x0

    return v1
.end method

.method private havePasswordNoMDMCache(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 1119
    nop

    .line 1120
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 1121
    .local v0, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    const/4 v1, -0x1

    .line 1122
    .local v1, "ret":I
    const-string v2, "LockPatternUtils"

    if-eqz v0, :cond_1e

    .line 1124
    :try_start_11
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getCredentialType(I)I

    move-result v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_17

    move v1, v3

    .line 1128
    goto :goto_1e

    .line 1125
    :catch_17
    move-exception v3

    .line 1126
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Unable to reach LockSettingsService"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v1, -0x1

    .line 1130
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    const/4 v3, -0x1

    if-ne v1, v3, :cond_38

    .line 1131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "havePasswordNoMDMCache() : no password in User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_38
    if-eq v1, v3, :cond_3c

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    return v2
.end method

.method public static final invalidateCredentialTypeCache()V
    .registers 2

    .line 1358
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "getCredentialType"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    return-void
.end method

.method public static isAutoPinConfirmFeatureAvailable()Z
    .registers 1

    .line 926
    const/4 v0, 0x1

    return v0
.end method

.method private isCredentialSharableWithParent(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .line 1265
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager(I)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isCredentialSharableWithParent()Z

    move-result v0

    return v0
.end method

.method public static isDeviceEncryptionEnabled()Z
    .registers 1

    .line 1187
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method private isEnterpriseUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3030
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 3031
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3032
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSdpSupportedSecureFolder(I)Z

    move-result v0

    return v0

    .line 3034
    :cond_12
    return v1

    .line 3035
    :cond_13
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3036
    return v1

    .line 3039
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static isFileEncryptionEnabled()Z
    .registers 1

    .line 1195
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    return v0
.end method

.method private isManagedProfile(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .line 1260
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1261
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static isQualityAlphabeticPassword(I)Z
    .registers 2
    .param p0, "quality"    # I

    .line 931
    const/high16 v0, 0x40000

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isQualityNumericPin(I)Z
    .registers 2
    .param p0, "quality"    # I

    .line 936
    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_b

    const/high16 v0, 0x30000

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isQualitySmartCard(I)Z
    .registers 2
    .param p0, "quality"    # I

    .line 2972
    const/high16 v0, 0x70000

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isSdpSupportedSecureFolder(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3068
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 3076
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3068
    return v0
.end method

.method static synthetic lambda$isSdpSupportedSecureFolder$0(ILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;
    .registers 5
    .param p0, "userId"    # I
    .param p1, "s"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 3070
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isSdpSupportedSecureFolder(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3071
    :catch_9
    move-exception v0

    .line 3072
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to check sdp support for secure folder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3073
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3074
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private makeLpuLog(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "contents"    # Ljava/lang/String;

    .line 2703
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2704
    return-void
.end method

.method private makeLpuLog(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 2711
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2712
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "lock enroll event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2713
    const-string v3, "Contents : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2714
    const-string v3, "Time : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->makeTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2715
    const-string v3, "User id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2716
    const-string v3, "UID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  PID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2717
    const-string v3, "Package : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2718
    const-string v2, "Callers : \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->makeTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2720
    if-eqz p3, :cond_98

    .line 2721
    const-string v1, "\nException : \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2725
    :cond_98
    const/4 v1, 0x0

    .line 2727
    .local v1, "TYPE_ENROLL":I
    :try_start_99
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/widget/ILockSettings;->addLog(ILjava/lang/String;)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_a4} :catch_a5

    .line 2730
    goto :goto_ad

    .line 2728
    :catch_a5
    move-exception v2

    .line 2729
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Lss log is written failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_ad
    return-void
.end method

.method private makeTime()Ljava/lang/String;
    .registers 10

    .line 2734
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2735
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2736
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2737
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2738
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2739
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2740
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2741
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2742
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    .line 2736
    const-string v3, "%02d-%02d %02d:%02d:%02d.%03d "

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static patternToByteArray(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .line 1293
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_6

    .line 1294
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 1296
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1298
    .local v0, "patternSize":I
    new-array v1, v0, [B

    .line 1299
    .local v1, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_28

    .line 1300
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1301
    .local v3, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1299
    .end local v3    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1303
    .end local v2    # "i":I
    :cond_28
    return-object v1
.end method

.method private reportAuditLog(IZI)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 2815
    const-string v0, ""

    .line 2817
    .local v0, "logMessage":Ljava/lang/String;
    if-eqz p2, :cond_11

    .line 2818
    sparse-switch p1, :sswitch_data_34

    .line 2829
    goto :goto_1e

    .line 2826
    :sswitch_8
    const-string v0, "Biometric authentication enabled: face"

    .line 2827
    goto :goto_1e

    .line 2823
    :sswitch_b
    const-string v0, "Biometric authentication enabled: fingerprint"

    .line 2824
    goto :goto_1e

    .line 2820
    :sswitch_e
    const-string v0, "Biometric authentication enabled: all"

    .line 2821
    goto :goto_1e

    .line 2832
    :cond_11
    sparse-switch p1, :sswitch_data_42

    goto :goto_1e

    .line 2840
    :sswitch_15
    const-string v0, "Biometric authentication disabled: face"

    .line 2841
    goto :goto_1e

    .line 2837
    :sswitch_18
    const-string v0, "Biometric authentication disabled: fingerprint"

    .line 2838
    goto :goto_1e

    .line 2834
    :sswitch_1b
    const-string v0, "Biometric authentication disabled: all"

    .line 2835
    nop

    .line 2848
    :goto_1e
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 2849
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 2848
    move-object v6, v0

    move v7, p3

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2852
    return-void

    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_b
        0x100 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_1b
        0x1 -> :sswitch_18
        0x100 -> :sswitch_15
    .end sparse-switch
.end method

.method private reportEnabledTrustAgentsChanged(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 1681
    nop

    .line 1682
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1683
    return-void

    .line 1686
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1687
    return-void
.end method

.method private reportPasswordThrottleAuditLog(I)V
    .registers 14
    .param p1, "userId"    # I

    .line 1664
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 1666
    .local v0, "failedAttempts":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1669
    .local v1, "token":J
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1670
    :try_start_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Incorrect authentication attempts %d limit reached"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 1671
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1669
    move v9, p1

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_30

    .line 1674
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1675
    nop

    .line 1676
    return-void

    .line 1674
    :catchall_30
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1675
    throw v3
.end method

.method private serializeTrustAgents(Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1609
    .local p1, "trustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1610
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1611
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 1612
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1614
    :cond_20
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    .end local v2    # "cn":Landroid/content/ComponentName;
    goto :goto_9

    .line 1616
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1530
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1534
    goto :goto_25

    .line 1531
    :catch_8
    move-exception v0

    .line 1533
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write boolean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private setLockCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 8
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userHandle"    # I
    .param p4, "ignoreNotifyPasswordChanged"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    const/4 v0, 0x0

    .line 1051
    .local v0, "streamNewCredential":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v1, 0x0

    .line 1053
    .local v1, "streamSavedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    move-object v0, v2

    .line 1054
    invoke-static {p2}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    move-object v1, v2

    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v0, v1, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_2f

    if-nez v2, :cond_23

    .line 1057
    nop

    .line 1060
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1061
    :cond_1c
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1057
    :cond_21
    const/4 v2, 0x0

    return v2

    .line 1060
    :cond_23
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1061
    :cond_28
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1063
    :cond_2d
    const/4 v2, 0x1

    return v2

    .line 1060
    :catchall_2f
    move-exception v2

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1061
    :cond_35
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1062
    :cond_3a
    throw v2
.end method

.method private setLong(Ljava/lang/String;JI)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 1548
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1552
    goto :goto_25

    .line 1549
    :catch_8
    move-exception v0

    .line 1551
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 1567
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1571
    goto :goto_25

    .line 1568
    :catch_8
    move-exception v0

    .line 1570
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    .line 1690
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1693
    return-void

    .line 1691
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should not be called from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/UserInfo;

    .line 2359
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private verifyCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    const/4 v0, 0x0

    .line 556
    .local v0, "streamCredential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    move-object v0, v1

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 559
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1c

    .line 561
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 559
    :cond_1b
    return-object v2

    .line 561
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_1c
    move-exception v1

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 562
    :cond_22
    throw v1
.end method

.method private wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    .line 1822
    if-nez p1, :cond_4

    .line 1823
    const/4 v0, 0x0

    return-object v0

    .line 1825
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 1829
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;-><init>(Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V

    return-object v0

    .line 1826
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must construct LockPatternUtils on a looper thread to use progress callbacks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private wrapCallbackForDualDar(Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    .line 3141
    if-nez p1, :cond_4

    .line 3142
    const/4 v0, 0x0

    return-object v0

    .line 3144
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 3148
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;-><init>(Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)V

    return-object v0

    .line 3145
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must construct LockPatternUtils on a looper thread to use progress callbacks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 6
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 1854
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsInternal;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addFailedFMMUnlockAttempt(I)J
    .registers 6
    .param p1, "userId"    # I

    .line 2525
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFailedFMMUnlockAttempt(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2526
    .local v0, "count":J
    const-string/jumbo v2, "lockscreen.failed_fmm_attempts"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2527
    return-wide v0
.end method

.method public addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .registers 7
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    .line 1873
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 1874
    :catch_9
    move-exception v0

    .line 1875
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not add weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .line 2275
    :try_start_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_d

    .line 2276
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 2277
    :cond_d
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_1a

    .line 2278
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 2279
    :cond_1a
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_28

    .line 2280
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p3, v1}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z

    move-result v0

    return v0

    .line 2281
    :cond_28
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_35

    .line 2282
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockBackupPin(Ljava/lang/String;I)Z

    move-result v0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_37

    return v0

    .line 2283
    :cond_35
    const/4 v0, 0x1

    return v0

    .line 2284
    :catch_37
    move-exception v0

    .line 2285
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to Check applock password :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const/4 v1, 0x0

    return v1
.end method

.method public checkAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I[B)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I
    .param p4, "hash"    # [B

    .line 2292
    :try_start_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_d

    .line 2293
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 2294
    :cond_d
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_1a

    .line 2295
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 2296
    :cond_1a
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_27

    .line 2297
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3, p4}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z

    move-result v0

    return v0

    .line 2298
    :cond_27
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_34

    .line 2299
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockBackupPin(Ljava/lang/String;I)Z

    move-result v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_36

    return v0

    .line 2300
    :cond_34
    const/4 v0, 0x1

    return v0

    .line 2301
    :catch_36
    move-exception v0

    .line 2302
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to Check applock password :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    const/4 v1, 0x0

    return v1
.end method

.method public checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    .registers 8
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 609
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 612
    nop

    .line 613
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 614
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->checkCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result v0

    return v0

    .line 617
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 618
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v2

    .line 617
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 619
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_1f

    .line 620
    return v0

    .line 621
    :cond_1f
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_27

    .line 622
    return v3

    .line 623
    :cond_27
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v3, :cond_41

    .line 625
    nop

    .line 626
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    if-lez v2, :cond_37

    .line 627
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordThrottleAuditLog(I)V

    .line 629
    :cond_37
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    .end local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    throw v2
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_41} :catch_42

    .line 631
    .restart local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    .restart local p3    # "progressCallback":Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;
    :cond_41
    return v0

    .line 633
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_42
    move-exception v1

    .line 634
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string v3, "failed to check credential"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    return v0
.end method

.method public checkPasswordHistory([B[BI)Z
    .registers 13
    .param p1, "passwordToCheck"    # [B
    .param p2, "hashFactor"    # [B
    .param p3, "userId"    # I

    .line 768
    const/4 v0, 0x0

    if-eqz p1, :cond_51

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_51

    .line 772
    :cond_7
    const-string/jumbo v1, "lockscreen.passwordhistory"

    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "passwordHistory":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 774
    return v0

    .line 776
    :cond_15
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v2

    .line 777
    .local v2, "passwordHistoryLength":I
    if-nez v2, :cond_1c

    .line 778
    return v0

    .line 780
    :cond_1c
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 781
    .local v3, "salt":[B
    invoke-static {p1, v3}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B[B)Ljava/lang/String;

    move-result-object v4

    .line 782
    .local v4, "legacyHash":Ljava/lang/String;
    invoke-static {p1, v3, p2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B[B)Ljava/lang/String;

    move-result-object v5

    .line 784
    .local v5, "passwordHash":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 786
    .local v6, "history":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_33
    array-length v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v7, v8, :cond_50

    .line 787
    aget-object v8, v6, v7

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    aget-object v8, v6, v7

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    goto :goto_4e

    .line 786
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 788
    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    return v0

    .line 791
    .end local v7    # "i":I
    :cond_50
    return v0

    .line 769
    .end local v1    # "passwordHistory":Ljava/lang/String;
    .end local v2    # "passwordHistoryLength":I
    .end local v3    # "salt":[B
    .end local v4    # "legacyHash":Ljava/lang/String;
    .end local v5    # "passwordHash":Ljava/lang/String;
    .end local v6    # "history":[Ljava/lang/String;
    :cond_51
    :goto_51
    const-string v1, "LockPatternUtils"

    const-string v2, "checkPasswordHistory: empty password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return v0
.end method

.method public checkRemoteLockPassword(I[BI)Z
    .registers 9
    .param p1, "remoteLockType"    # I
    .param p2, "password"    # [B
    .param p3, "userHandle"    # I

    .line 2641
    const/4 v0, 0x0

    const-string v1, "LockPatternUtils"

    if-nez p1, :cond_1c

    .line 2642
    :try_start_5
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 2644
    .local v2, "sha1":[B
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v2, p3}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword([BI)Z

    move-result v0

    return v0

    .line 2652
    .end local v2    # "sha1":[B
    :catch_18
    move-exception v2

    goto :goto_28

    .line 2649
    :catch_1a
    move-exception v2

    goto :goto_2e

    .line 2645
    :cond_1c
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4f

    .line 2646
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword([BI)Z

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_27} :catch_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_27} :catch_18

    return v0

    .line 2653
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_28
    const-string v3, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    return v0

    .line 2650
    .local v2, "re":Landroid/os/RemoteException;
    :goto_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    return v0

    .line 2648
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_4f
    return v2
.end method

.method public clearBiometricAttemptDeadline(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 2905
    const-string/jumbo v0, "lockscreen.lockout_biometric_attempt_timeoutms"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2906
    const-string/jumbo v0, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2907
    return-void
.end method

.method public clearFailedFMMUnlockAttempt(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 2542
    const-string/jumbo v0, "lockscreen.failed_fmm_attempts"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2543
    return-void
.end method

.method public clearLockoutAttemptDeadline(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 2492
    const-string/jumbo v0, "lockscreen.lockoutattempttimeoutmss"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2493
    const-string/jumbo v0, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2494
    return-void
.end method

.method public createNewUser(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "userSerialNumber"    # I

    .line 2981
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockSettingsInternal;->createNewUser(II)V

    .line 2982
    return-void
.end method

.method public getActivePasswordQuality(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 852
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getBiometricAttemptDeadline(I)J
    .registers 13
    .param p1, "userId"    # I

    .line 2874
    const-string/jumbo v0, "lockscreen.lockout_biometric_attempt_deadline"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 2875
    .local v3, "deadline":J
    const-string/jumbo v5, "lockscreen.lockout_biometric_attempt_timeoutms"

    invoke-direct {p0, v5, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    .line 2876
    .local v6, "timeoutMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2878
    .local v8, "now":J
    cmp-long v10, v3, v1

    if-eqz v10, :cond_23

    cmp-long v10, v3, v8

    if-gez v10, :cond_23

    .line 2880
    invoke-direct {p0, v5, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2881
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2882
    return-wide v1

    .line 2885
    :cond_23
    cmp-long v1, v6, v1

    if-eqz v1, :cond_32

    add-long v1, v8, v6

    cmp-long v1, v3, v1

    if-lez v1, :cond_32

    .line 2887
    add-long v3, v8, v6

    .line 2888
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2891
    :cond_32
    return-wide v3
.end method

.method public getBiometricAttemptTimeout(I)J
    .registers 5
    .param p1, "userId"    # I

    .line 2898
    const-string/jumbo v0, "lockscreen.lockout_biometric_attempt_timeoutms"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBiometricState(II)I
    .registers 4
    .param p1, "biometricType"    # I
    .param p2, "userId"    # I

    .line 2780
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    .line 2781
    const/4 v0, 0x1

    return v0

    .line 2783
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getBiometricStrongAuthTimeout(Ljava/lang/String;I)J
    .registers 5
    .param p1, "bioTimeoutKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2960
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBiometricType(I)I
    .registers 7
    .param p1, "userId"    # I

    .line 2765
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 2766
    .local v0, "isUPSM":Z
    :goto_10
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "emergency_mode"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 2767
    .local v1, "isEMC":Z
    :goto_1c
    if-nez v0, :cond_2c

    if-eqz v1, :cond_21

    goto :goto_2c

    .line 2770
    :cond_21
    const-string/jumbo v2, "lockscreen.samsung_biometric"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 2768
    :cond_2c
    :goto_2c
    return v2
.end method

.method public getCarrierLockoutAttemptDeadline(I)J
    .registers 11
    .param p1, "userId"    # I

    .line 2586
    const-string/jumbo v0, "sktlockscreen.lockoutdeadline"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 2587
    .local v3, "deadline":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2588
    .local v5, "now":J
    cmp-long v0, v3, v5

    if-gtz v0, :cond_12

    .line 2589
    return-wide v1

    .line 2590
    :cond_12
    sub-long v0, v3, v5

    const-wide/32 v7, 0x927c0

    cmp-long v0, v0, v7

    if-lez v0, :cond_44

    .line 2591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getCarrierLockoutAttemptDeadline : Need to adjust deadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, v3, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockPatternUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCarrierLockoutAttemptDeadline(I)J

    move-result-wide v3

    .line 2594
    :cond_44
    return-wide v3
.end method

.method public getCredentialTypeForUser(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .line 1368
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCredentialTypeCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 495
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 496
    const/4 v0, 0x0

    return v0

    .line 498
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public getDeviceOwnerInfo()Ljava/lang/String;
    .registers 3

    .line 1172
    const-string/jumbo v0, "lockscreen.device_owner_info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 4

    .line 335
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_20

    .line 336
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 337
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 338
    if-nez v0, :cond_20

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stack trace:"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "LockPatternUtils"

    const-string v2, "Can\'t get DevicePolicyManagerService: is it running?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    :cond_20
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnabledTrustAgents(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1595
    const-string/jumbo v0, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->deserializeTrustAgents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFailedFMMUnlockAttempt(I)J
    .registers 5
    .param p1, "userId"    # I

    .line 2535
    const-string/jumbo v0, "lockscreen.failed_fmm_attempts"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFolderInstantlyLocks(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2950
    const-string/jumbo v0, "lockscreen.folder_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .registers 3
    .param p1, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getKnownTrustAgents(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1605
    const-string/jumbo v0, "lockscreen.knowntrustagents"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->deserializeTrustAgents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;
    .registers 4

    monitor-enter p0

    .line 3158
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockPatternUtilForDualDarDo:Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    if-nez v0, :cond_f

    .line 3159
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockPatternUtilForDualDarDo:Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    .line 3161
    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils;
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockPatternUtilForDualDarDo:Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 3157
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_12

    .line 391
    nop

    .line 392
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 391
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 393
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 395
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_12
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method public getLockoutAttemptDeadline(I)J
    .registers 13
    .param p1, "userId"    # I

    .line 1493
    const-string/jumbo v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 1494
    .local v3, "deadline":J
    const-string/jumbo v5, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v5, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    .line 1495
    .local v6, "timeoutMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1496
    .local v8, "now":J
    cmp-long v10, v3, v8

    if-gez v10, :cond_23

    cmp-long v10, v3, v1

    if-eqz v10, :cond_23

    .line 1498
    invoke-direct {p0, v5, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1499
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1500
    return-wide v1

    .line 1502
    :cond_23
    add-long v1, v8, v6

    cmp-long v1, v3, v1

    if-lez v1, :cond_2e

    .line 1504
    add-long v3, v8, v6

    .line 1505
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1507
    :cond_2e
    return-wide v3
.end method

.method public getLockoutAttemptTimeout(I)J
    .registers 5
    .param p1, "userId"    # I

    .line 2482
    const-string/jumbo v0, "lockscreen.lockoutattempttimeoutmss"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumFailedPasswordsForWipe(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 502
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 503
    const/4 v0, 0x0

    return v0

    .line 505
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getMaximumPasswordLength(I)I
    .registers 3
    .param p1, "quality"    # I

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    return v0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 1149
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordHint(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 2515
    const-string/jumbo v0, "lockscreen.password_hint"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordHistoryHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .registers 6
    .param p1, "currentPassword"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 724
    nop

    .line 725
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 726
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistoryHashFactorForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v0

    return-object v0

    .line 729
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    .line 730
    :catch_15
    move-exception v0

    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to get hash factor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPinLength(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 813
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getPinLength(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 814
    :catch_9
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not fetch PIN length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v1, -0x1

    return v1
.end method

.method public getPowerButtonInstantlyLocks(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1580
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 399
    nop

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 401
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getPasswordMinimumLengthForInner()I

    move-result v0

    return v0

    .line 403
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordComplexity(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(IZ)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordComplexity(IZ)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z

    .line 460
    nop

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0

    return v0

    .line 465
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 3
    .param p1, "userId"    # I

    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z

    .line 423
    nop

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 425
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 426
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 427
    .local v0, "metrics":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getPasswordMinimumLengthForInner()I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 428
    return-object v0

    .line 430
    .end local v0    # "metrics":Landroid/app/admin/PasswordMetrics;
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getStrongAuthForUser(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 1754
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getStrongAuthForUser(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1755
    :catch_9
    move-exception v0

    .line 1756
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not get StrongAuth"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1757
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method public hasPendingEscrowToken(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2337
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->hasPendingEscrowToken(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2338
    :catch_9
    move-exception v0

    .line 2339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2341
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public hasSecureLockScreen()Z
    .registers 2

    .line 2348
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;

    if-nez v0, :cond_17

    .line 2350
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->hasSecureLockScreen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    .line 2353
    goto :goto_17

    .line 2351
    :catch_13
    move-exception v0

    .line 2352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2355
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mHasSecureLockScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isAppLockFingerPrintLockscreen(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2328
    const-string/jumbo v0, "lockscreen.applock_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isAutoPinConfirmEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 916
    const-string/jumbo v0, "lockscreen.auto_pin_confirm"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isBiometricAllowedForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1780
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit16 v0, v0, -0x10d

    if-nez v0, :cond_10

    .line 1781
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isUCMLockEnabled(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1780
    :goto_11
    return v0
.end method

.method public isCarrierLockEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2553
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLock(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2554
    :catch_9
    move-exception v0

    .line 2555
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isCarrierPasswordSaved(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2665
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2666
    :catch_9
    move-exception v0

    .line 2667
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isCredentialsDisabledForUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1765
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public isDeviceOwner(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 3052
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 3053
    return v0

    .line 3055
    :cond_4
    const-string/jumbo v1, "knox.device_owner"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public isDeviceOwnerInfoEnabled()Z
    .registers 2

    .line 1176
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDevicePasswordSimple(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 2398
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "is_smpw_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    move v2, v1

    :cond_e
    return v2
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1926
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsInternal;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2678
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2679
    :catch_9
    move-exception v0

    .line 2680
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isLockPasswordEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1386
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 1387
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v1, 0x1

    :goto_11
    return v1
.end method

.method public isLockPasswordEnabledNoCache(I)Z
    .registers 23
    .param p1, "userId"    # I

    .line 1099
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string/jumbo v2, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v5

    long-to-int v2, v5

    int-to-long v5, v2

    .line 1100
    .local v5, "mode":J
    const-string/jumbo v2, "lockscreen.password_type_alternate"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    .line 1101
    .local v2, "backupMode":J
    const-wide/32 v7, 0x40000

    cmp-long v4, v5, v7

    const-wide/32 v9, 0x60000

    const-wide/32 v11, 0x50000

    const-wide/32 v13, 0x30000

    const-wide/32 v15, 0x20000

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-eqz v4, :cond_4a

    cmp-long v4, v5, v15

    if-eqz v4, :cond_4a

    cmp-long v4, v5, v13

    if-eqz v4, :cond_4a

    cmp-long v4, v5, v11

    if-eqz v4, :cond_4a

    cmp-long v4, v5, v9

    if-eqz v4, :cond_4a

    const-wide/32 v19, 0x70000

    cmp-long v4, v5, v19

    if-nez v4, :cond_47

    goto :goto_4a

    :cond_47
    move/from16 v4, v17

    goto :goto_4c

    :cond_4a
    :goto_4a
    move/from16 v4, v18

    .line 1108
    .local v4, "passwordEnabled":Z
    :goto_4c
    cmp-long v7, v2, v7

    if-eqz v7, :cond_64

    cmp-long v7, v2, v15

    if-eqz v7, :cond_64

    cmp-long v7, v2, v13

    if-eqz v7, :cond_64

    cmp-long v7, v2, v11

    if-eqz v7, :cond_64

    cmp-long v7, v2, v9

    if-nez v7, :cond_61

    goto :goto_64

    :cond_61
    move/from16 v7, v17

    goto :goto_66

    :cond_64
    :goto_64
    move/from16 v7, v18

    .line 1114
    .local v7, "backupEnabled":Z
    :goto_66
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->havePasswordNoMDMCache(I)Z

    move-result v8

    if-eqz v8, :cond_7c

    if-nez v4, :cond_79

    .line 1115
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v8

    const v9, 0x8000

    if-ne v8, v9, :cond_7c

    if-eqz v7, :cond_7c

    :cond_79
    move/from16 v17, v18

    goto :goto_7d

    :cond_7c
    nop

    .line 1114
    :goto_7d
    return v17
.end method

.method public isLockPatternEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1397
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 1398
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isLockScreenDisabled(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 886
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 887
    return v1

    .line 889
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110120

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 891
    .local v0, "disabledByDefault":Z
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 892
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    if-eqz v2, :cond_30

    .line 893
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_30

    move v3, v4

    goto :goto_31

    :cond_30
    move v3, v1

    .line 894
    .local v3, "isDemoUser":Z
    :goto_31
    const-string/jumbo v5, "lockscreen.disabled"

    invoke-direct {p0, v5, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v5

    if-nez v5, :cond_3e

    if-nez v0, :cond_3e

    if-eqz v3, :cond_3f

    :cond_3e
    move v1, v4

    :cond_3f
    return v1
.end method

.method public isManagedProfileWithUnifiedChallenge(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .line 1246
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSeparateChallenge(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isNeedToEnableSdpMdfppModeForSystem()Z
    .registers 7

    .line 3101
    const-string/jumbo v0, "sdp-mdfppmode-for-system"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_11

    const/4 v3, 0x1

    :cond_11
    return v3
.end method

.method public isOwnerInfoEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1153
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPatternEverChosen(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 801
    const-string/jumbo v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPinEnhancedPrivacyEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1440
    const-string/jumbo v0, "pin_enhanced_privacy"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPinEnhancedPrivacyEverChosen(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1454
    const-string/jumbo v0, "pin_enhanced_privacy"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isPowerButtonInstantlyLocksEverChosen(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1584
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isRMMLockEnabled(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 2691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_24

    .line 2692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "locked"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    .line 2693
    .local v1, "lockState":Z
    if-eqz v1, :cond_21

    .line 2694
    const/4 v2, 0x1

    return v2

    .line 2691
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2697
    .end local v0    # "i":I
    .end local v1    # "lockState":Z
    :cond_24
    return v2
.end method

.method public isSdpMdfppModeEnabledForSystem()Z
    .registers 7

    .line 3096
    const-string/jumbo v0, "sdp-mdfppmode-for-system"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    const-wide/16 v4, 0x2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_11

    const/4 v3, 0x1

    :cond_11
    return v3
.end method

.method public isSecure(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1377
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    .line 1378
    .local v0, "type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 1379
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1380
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1381
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    .line 1378
    :goto_1d
    return v1
.end method

.method public isSeparateProfileChallengeEnabled(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .line 1239
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSeparateChallenge(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isSyntheticPasswordEnabledForSystem()Z
    .registers 7

    .line 3084
    const-string v0, "enable-sp-for-system"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    :cond_e
    return v3
.end method

.method public isTrustAllowedForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1773
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isTrustUsuallyManaged(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    instance-of v0, v0, Lcom/android/internal/widget/ILockSettings$Stub;

    if-eqz v0, :cond_15

    .line 293
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.istrustusuallymanaged"

    invoke-interface {v1, v2, v0, p1}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    return v0

    .line 294
    :catch_13
    move-exception v1

    .line 295
    .local v1, "e":Landroid/os/RemoteException;
    return v0

    .line 289
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "May only be called by TrustManagerService. Use TrustManager.isTrustUsuallyManaged()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isUCMLockEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2967
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public isUserInLockdown(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1786
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isVisiblePatternDisabledByMDM()Z
    .registers 3

    .line 1081
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 1082
    .local v0, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1083
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 1085
    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method public isVisiblePatternDisabledByMDMAsUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1089
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 1090
    .local v0, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1091
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 1093
    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method public isVisiblePatternEnabled(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1408
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDMAsUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pattern visibility disabled by MDM for user : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return v1

    .line 1414
    :cond_21
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEverChosen(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1433
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isWeakEscrowTokenActive(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1935
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->isWeakEscrowTokenActive(JI)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1936
    :catch_9
    move-exception v0

    .line 1937
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not check the weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWeakEscrowTokenValid(J[BI)Z
    .registers 8
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 1945
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->isWeakEscrowTokenValid(J[BI)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1946
    :catch_9
    move-exception v0

    .line 1947
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not validate the weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 6
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 1071
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1074
    goto :goto_10

    .line 1072
    :catch_8
    move-exception v0

    .line 1073
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Couldn\'t notify password changed for enterprise user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public refreshStoredPinLength(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 831
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->refreshStoredPinLength(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 832
    :catch_9
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not store PIN length on disk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v1, 0x0

    return v1
.end method

.method public registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .registers 5
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .line 1697
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1700
    nop

    .line 1701
    return-void

    .line 1698
    :catch_d
    move-exception v0

    .line 1699
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not register StrongAuthTracker"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1715
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1716
    :catch_9
    move-exception v0

    .line 1717
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not register WeakEscrowTokenRemovedListener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeCachedUnifiedChallenge(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2390
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeCachedUnifiedChallenge(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2393
    goto :goto_c

    .line 2391
    :catch_8
    move-exception v0

    .line 2392
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2394
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public removeEscrowToken(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1901
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsInternal;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public removeGatekeeperPasswordHandle(J)V
    .registers 6
    .param p1, "gatekeeperPasswordHandle"    # J

    .line 589
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->removeGatekeeperPasswordHandle(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 592
    goto :goto_10

    .line 590
    :catch_8
    move-exception v0

    .line 591
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to remove gatekeeper password handle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public removeUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2986
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockSettingsInternal;->removeUser(I)V

    .line 2987
    return-void
.end method

.method public removeWeakEscrowToken(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1912
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->removeWeakEscrowToken(JI)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1913
    :catch_9
    move-exception v0

    .line 1914
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not remove the weak token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportFailedPasswordAttempt(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 471
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 472
    return-void

    .line 474
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 475
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 476
    return-void
.end method

.method public reportPasswordLockout(II)V
    .registers 4
    .param p1, "timeoutMs"    # I
    .param p2, "userId"    # I

    .line 488
    const/16 v0, -0x270f

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 489
    return-void

    .line 491
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/trust/TrustManager;->reportUnlockLockout(II)V

    .line 492
    return-void
.end method

.method public reportPatternWasChosen(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 842
    const-string/jumbo v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 843
    return-void
.end method

.method public reportSuccessfulBiometricUnlock(ZI)V
    .registers 6
    .param p1, "isStrongBiometric"    # Z
    .param p2, "userId"    # I

    .line 1735
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->reportSuccessfulBiometricUnlock(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1738
    goto :goto_10

    .line 1736
    :catch_8
    move-exception v0

    .line 1737
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not report successful biometric unlock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1739
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 480
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 481
    return-void

    .line 483
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 484
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 485
    return-void
.end method

.method public requireCredentialEntry(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1641
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1642
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 6
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 1656
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1659
    goto :goto_21

    .line 1657
    :catch_8
    move-exception v0

    .line 1658
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while requesting strong auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public resetKeyStore(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 860
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->resetKeyStore(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 864
    goto :goto_21

    .line 861
    :catch_8
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t reset keystore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public saveAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .line 2259
    :try_start_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_c

    .line 2260
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPin(Ljava/lang/String;I)V

    goto :goto_2f

    .line 2261
    :cond_c
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_18

    .line 2262
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPassword(Ljava/lang/String;I)V

    goto :goto_2f

    .line 2263
    :cond_18
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_24

    .line 2264
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPattern(Ljava/lang/String;I)V

    goto :goto_2f

    .line 2265
    :cond_24
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v0, :cond_2f

    .line 2266
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockBackupPin(Ljava/lang/String;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_30

    .line 2270
    :cond_2f
    :goto_2f
    goto :goto_53

    .line 2268
    :catch_30
    move-exception v0

    .line 2269
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_53
    return-void
.end method

.method public saveRemoteLockPassword(I[BI)V
    .registers 8
    .param p1, "remoteLockType"    # I
    .param p2, "password"    # [B
    .param p3, "userId"    # I

    .line 2606
    const-string v0, "LockPatternUtils"

    packed-switch p1, :pswitch_data_48

    goto :goto_47

    .line 2619
    :pswitch_6
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword([BI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 2623
    goto :goto_47

    .line 2620
    :catch_e
    move-exception v1

    .line 2622
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Carrier Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    .end local v1    # "re":Landroid/os/RemoteException;
    goto :goto_47

    .line 2610
    :pswitch_26
    :try_start_26
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword([BI)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_2f

    .line 2614
    goto :goto_47

    .line 2611
    :catch_2f
    move-exception v1

    .line 2613
    .restart local v1    # "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock FMM Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    .end local v1    # "re":Landroid/os/RemoteException;
    nop

    .line 2629
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_26
        :pswitch_6
    .end packed-switch
.end method

.method public savedAppLockPasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .registers 5
    .param p1, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p2, "userId"    # I

    .line 2309
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_e

    .line 2310
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPin(I)Z

    move-result v0

    return v0

    .line 2311
    :cond_e
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_1b

    .line 2312
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPassword(I)Z

    move-result v0

    return v0

    .line 2313
    :cond_1b
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_28

    .line 2314
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPattern(I)Z

    move-result v0

    return v0

    .line 2315
    :cond_28
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_35

    .line 2316
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockBackupPin(I)Z

    move-result v0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_34} :catch_36

    return v0

    .line 2317
    :cond_35
    return v0

    .line 2318
    :catch_36
    move-exception v1

    .line 2319
    .local v1, "re":Landroid/os/RemoteException;
    return v0
.end method

.method public scheduleNonStrongBiometricIdleTimeout(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1743
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->scheduleNonStrongBiometricIdleTimeout(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1746
    goto :goto_10

    .line 1744
    :catch_8
    move-exception v0

    .line 1745
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not schedule non-strong biometric idle timeout"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1747
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public setAppLockFingerPrintLockscreen(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 2324
    const-string/jumbo v0, "lockscreen.applock_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2325
    return-void
.end method

.method public setAutoPinConfirm(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 905
    const-string/jumbo v0, "lockscreen.auto_pin_confirm"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 906
    return-void
.end method

.method public setBiometricAttemptDeadline(II)J
    .registers 8
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .line 2860
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 2862
    .local v0, "deadline":J
    const-string/jumbo v2, "lockscreen.lockout_biometric_attempt_timeoutms"

    int-to-long v3, p2

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2863
    const-string/jumbo v2, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2865
    return-wide v0
.end method

.method public setBiometricState(III)V
    .registers 10
    .param p1, "biometricType"    # I
    .param p2, "state"    # I
    .param p3, "userId"    # I

    .line 2795
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    .line 2798
    .local v0, "oldValue":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_a

    .line 2799
    or-int v2, v0, p1

    goto :goto_c

    :cond_a
    not-int v2, p1

    and-int/2addr v2, v0

    .line 2800
    .local v2, "newValue":I
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBiometricState ( oldValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , newValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2801
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2800
    const-string v4, "LockPatternUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    const-string/jumbo v3, "lockscreen.samsung_biometric"

    int-to-long v4, v2

    invoke-direct {p0, v3, v4, v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2803
    if-ne p2, v1, :cond_47

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    :goto_48
    invoke-direct {p0, p1, v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->reportAuditLog(IZI)V

    .line 2804
    return-void
.end method

.method public setBiometricStrongAuthTimeout(Ljava/lang/String;JI)V
    .registers 5
    .param p1, "bioTimeoutKey"    # Ljava/lang/String;
    .param p2, "timeoutMs"    # J
    .param p4, "userId"    # I

    .line 2956
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2957
    return-void
.end method

.method public setCarrierLockoutAttemptDeadline(I)J
    .registers 6
    .param p1, "userId"    # I

    .line 2575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 2576
    .local v0, "deadline":J
    const-string/jumbo v2, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2577
    return-wide v0
.end method

.method public setDeviceOwner(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3044
    if-eqz p1, :cond_3

    .line 3045
    return-void

    .line 3047
    :cond_3
    const-string/jumbo v0, "knox.device_owner"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3048
    return-void
.end method

.method public setDeviceOwnerInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 1164
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1165
    const/4 p1, 0x0

    .line 1168
    :cond_9
    const-string/jumbo v0, "lockscreen.device_owner_info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1169
    return-void
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 1589
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    const-string/jumbo v0, "lockscreen.enabledtrustagents"

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->serializeTrustAgents(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1590
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1591
    return-void
.end method

.method public setFolderInstantlyLocks(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 2946
    const-string/jumbo v0, "lockscreen.folder_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2947
    return-void
.end method

.method public setKnownTrustAgents(Ljava/util/Collection;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 1600
    .local p1, "knownTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    const-string/jumbo v0, "lockscreen.knowntrustagents"

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->serializeTrustAgents(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1601
    return-void
.end method

.method public setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 5
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userHandle"    # I

    .line 978
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    return v0
.end method

.method public setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 9
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userHandle"    # I
    .param p4, "ignoreNotifyPasswordChanged"    # Z

    .line 984
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_16

    .line 985
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires the lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_16
    :goto_16
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->checkLength()V

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockCredential new type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;)V

    .line 996
    nop

    .line 997
    :try_start_35
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseUser(I)Z

    move-result v0
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_39} :catch_7d

    const/4 v1, 0x0

    const-string/jumbo v2, "setLockCredential return false!"

    if-eqz v0, :cond_49

    .line 998
    :try_start_3f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    if-nez v0, :cond_57

    .line 1001
    invoke-direct {p0, p3, v2}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;)V

    .line 1003
    return v1

    .line 1007
    :cond_49
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v0

    if-nez v0, :cond_57

    .line 1009
    invoke-direct {p0, p3, v2}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_56} :catch_7d

    .line 1011
    return v1

    .line 1018
    :cond_57
    nop

    .line 1021
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1022
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAndLockState(I)V

    .line 1027
    :cond_61
    const/4 v0, 0x1

    :try_start_62
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1028
    move v2, v0

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x2

    .line 1027
    :goto_6f
    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->sendLockTypeChangedInfo(I)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_72} :catch_73

    .line 1031
    goto :goto_7c

    .line 1029
    :catch_73
    move-exception v1

    .line 1030
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "sendLockTypeChangedInfo Failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1033
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7c
    return v0

    .line 1013
    :catch_7d
    move-exception v0

    .line 1015
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "setLockCredential failed"

    invoke-direct {p0, p3, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1017
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to save lock password"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 13
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userHandle"    # I

    .line 1965
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_16

    .line 1966
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires the lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1970
    :cond_16
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockCredentialWithToken credential = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/widget/LockPatternUtils;->makeLpuLog(ILjava/lang/String;)V

    .line 1972
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->checkLength()V

    .line 1973
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    .line 1975
    .local v0, "localService":Lcom/android/internal/widget/LockSettingsInternal;
    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/LockSettingsInternal;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v1

    return v1
.end method

.method public setLockScreenDisabled(ZI)V
    .registers 4
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    .line 875
    const-string/jumbo v0, "lockscreen.disabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 876
    return-void
.end method

.method public setLockoutAttemptDeadline(II)J
    .registers 8
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .line 1471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 1472
    .local v0, "deadline":J
    const/16 v2, -0x270f

    if-ne p1, v2, :cond_b

    .line 1475
    return-wide v0

    .line 1478
    :cond_b
    const-string/jumbo v2, "lockscreen.lockoutattempttimeoutmss"

    int-to-long v3, p2

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1479
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1483
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1139
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1140
    return-void
.end method

.method public setOwnerInfoEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1144
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1145
    return-void
.end method

.method public setPasswordHint(Ljava/lang/String;I)V
    .registers 4
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2505
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2506
    const/4 p1, 0x0

    .line 2508
    :cond_9
    const-string/jumbo v0, "lockscreen.password_hint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2509
    return-void
.end method

.method public setPinEnhancedPrivacyEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1447
    const-string/jumbo v0, "pin_enhanced_privacy"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1448
    return-void
.end method

.method public setPowerButtonInstantlyLocks(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1575
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1576
    return-void
.end method

.method public setSecurityDebugLevel(I)V
    .registers 5
    .param p1, "level"    # I

    .line 2751
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setSecurityDebugLevel(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2754
    goto :goto_10

    .line 2752
    :catch_8
    move-exception v0

    .line 2753
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "!@setSecurityDebugLevel set failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 7
    .param p1, "userHandle"    # I
    .param p2, "enabled"    # Z
    .param p3, "profilePassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 1223
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1224
    return-void

    .line 1227
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1229
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportEnabledTrustAgentsChanged(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 1232
    goto :goto_1a

    .line 1230
    :catch_12
    move-exception v0

    .line 1231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Couldn\'t update work profile challenge enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public setTrustUsuallyManaged(ZI)V
    .registers 5
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.istrustusuallymanaged"

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 304
    goto :goto_c

    .line 302
    :catch_b
    move-exception v0

    .line 305
    :goto_c
    return-void
.end method

.method public setVisiblePasswordEnabled(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1462
    return-void
.end method

.method public setVisiblePatternEnabled(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1423
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDMAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz p1, :cond_22

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVisiblePatternEnabled() : Could not enable visible pattern by MDM admin. user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockPatternUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return-void

    .line 1429
    :cond_22
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1430
    return-void
.end method

.method public startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;
    .registers 3

    .line 2995
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2996
    :catch_9
    move-exception v0

    .line 2997
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public tryUnlockWithCachedUnifiedChallenge(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2381
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->tryUnlockWithCachedUnifiedChallenge(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2382
    :catch_9
    move-exception v0

    .line 2383
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public unlockUserKeyIfUnsecured(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2977
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockSettingsInternal;->unlockUserKeyIfUnsecured(I)V

    .line 2978
    return-void
.end method

.method public unlockUserWithToken(J[BI)Z
    .registers 6
    .param p1, "tokenHandle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 1989
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettingsInternal()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockSettingsInternal;->unlockUserWithToken(J[BI)Z

    move-result v0

    return v0
.end method

.method public unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .registers 5
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .line 1705
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1708
    goto :goto_14

    .line 1706
    :catch_c
    move-exception v0

    .line 1707
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not unregister StrongAuthTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1709
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1726
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1727
    :catch_9
    move-exception v0

    .line 1728
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not register WeakEscrowTokenRemovedListener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateCarrierLock(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 2561
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->updateCarrierLock(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2562
    :catch_9
    move-exception v0

    .line 2563
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable updateCarrierLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    const/4 v1, 0x0

    return v1
.end method

.method public userPresent(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->userPresent(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 312
    nop

    .line 313
    return-void

    .line 310
    :catch_9
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;
    .registers 4
    .param p1, "encryptedCredential"    # [B

    .line 3008
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3009
    :catch_9
    move-exception v0

    .line 3010
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 521
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 524
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 525
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredentialForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0

    .line 528
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 530
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v0, :cond_1b

    .line 531
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_1c

    return-object v1

    .line 533
    :cond_1b
    return-object v0

    .line 535
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_1c
    move-exception v0

    .line 536
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to verify credential"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method public verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 12
    .param p1, "gatekeeperPasswordHandle"    # J
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .line 575
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 576
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 577
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v0, :cond_10

    .line 578
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v1

    .line 580
    :cond_10
    return-object v0

    .line 581
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_11
    move-exception v0

    .line 582
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to verify gatekeeper password"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method public verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 701
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 703
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 704
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 705
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v0, :cond_10

    .line 706
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_11

    return-object v1

    .line 708
    :cond_10
    return-object v0

    .line 710
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_11
    move-exception v0

    .line 711
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to verify tied profile credential"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method
