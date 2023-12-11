.class public Landroid/sec/enterprise/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final PWD_CHANGE_NOT_ENFORCED:I

.field private static TAG:Ljava/lang/String;

.field public static final enforcePwdExceptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 39
    const-string v0, "PasswordPolicy"

    sput-object v0, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    .line 41
    const-string v1, "com.android.settings.SubSettings"

    const-string v2, "com.android.settings.ChooseLockPassword"

    const-string v3, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    const-string v4, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    const-string v5, "com.android.phone.EmergencyDialer"

    const-string v6, "com.android.phone.OutgoingCallBroadcaster"

    const-string v7, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    const-string v8, "com.android.phone.InCallScreen"

    const-string v9, "com.android.internal.policy.impl.LockScreen"

    const-string v10, "com.android.internal.policy.impl.PatternUnlockScreen"

    const-string v11, "com.android.internal.policy.impl.PasswordUnlockScreen"

    const-string v12, "com.android.server.telecom.EmergencyCallActivity"

    const-string v13, "com.samsung.android.app.telephonyui.emergencydialer.view.EmergencyDialerActivity"

    const-string v14, "com.android.incallui.call.InCallActivity"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isScreenLockPatternVisibilityEnabled()Z
    .registers 4

    .line 58
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 59
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 60
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 64
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_14

    .line 62
    :catch_c
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isScreenLockPatternVisibilityEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x1

    return v0
.end method

.method public isScreenLockPatternVisibilityEnabledAsUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 70
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 71
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 72
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 76
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_14

    .line 74
    :catch_c
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isScreenLockPatternVisibilityEnabledAsUser returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x1

    return v0
.end method

.method public notifyPasswordPolicyOneLockChanged(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 82
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 83
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_9

    .line 84
    invoke-interface {v0, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->notifyPasswordPolicyOneLockChanged(ZI)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 88
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_9
    goto :goto_12

    .line 86
    :catch_a
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-notifyPasswordPolicyOneLockChanged failed to be called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method
