.class public final Landroid/app/admin/DevicePolicyIdentifiers;
.super Ljava/lang/Object;
.source "DevicePolicyIdentifiers.java"


# static fields
.field public static final ACCOUNT_MANAGEMENT_DISABLED_POLICY:Ljava/lang/String; = "accountManagementDisabled"

.field public static final APPLICATION_HIDDEN_POLICY:Ljava/lang/String; = "applicationHidden"

.field public static final APPLICATION_RESTRICTIONS_POLICY:Ljava/lang/String; = "applicationRestrictions"

.field public static final AUTO_TIMEZONE_POLICY:Ljava/lang/String; = "autoTimezone"

.field public static final AUTO_TIME_POLICY:Ljava/lang/String; = "autoTime"

.field public static final BACKUP_SERVICE_POLICY:Ljava/lang/String; = "backupService"

.field public static final CAMERA_DISABLED_POLICY:Ljava/lang/String; = "cameraDisabled"

.field public static final CROSS_PROFILE_INTENT_FILTER_POLICY:Ljava/lang/String; = "crossProfileIntentFilter"

.field public static final CROSS_PROFILE_WIDGET_PROVIDER_POLICY:Ljava/lang/String; = "crossProfileWidgetProvider"

.field public static final KEYGUARD_DISABLED_FEATURES_POLICY:Ljava/lang/String; = "keyguardDisabledFeatures"

.field public static final LOCK_TASK_POLICY:Ljava/lang/String; = "lockTask"

.field public static final PACKAGES_SUSPENDED_POLICY:Ljava/lang/String; = "packagesSuspended"

.field public static final PACKAGE_UNINSTALL_BLOCKED_POLICY:Ljava/lang/String; = "packageUninstallBlocked"

.field public static final PERMISSION_GRANT_POLICY:Ljava/lang/String; = "permissionGrant"

.field public static final PERMITTED_INPUT_METHODS_POLICY:Ljava/lang/String; = "permittedInputMethods"

.field public static final PERSISTENT_PREFERRED_ACTIVITY_POLICY:Ljava/lang/String; = "persistentPreferredActivity"

.field public static final PERSONAL_APPS_SUSPENDED_POLICY:Ljava/lang/String; = "personalAppsSuspended"

.field public static final RESET_PASSWORD_TOKEN_POLICY:Ljava/lang/String; = "resetPasswordToken"

.field public static final SCREEN_CAPTURE_DISABLED_POLICY:Ljava/lang/String; = "screenCaptureDisabled"

.field public static final STATUS_BAR_DISABLED_POLICY:Ljava/lang/String; = "statusBarDisabled"

.field public static final TRUST_AGENT_CONFIGURATION_POLICY:Ljava/lang/String; = "trustAgentConfiguration"

.field public static final USER_CONTROL_DISABLED_PACKAGES_POLICY:Ljava/lang/String; = "userControlDisabledPackages"

.field public static final USER_RESTRICTION_PREFIX:Ljava/lang/String; = "userRestriction_"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "restriction"    # Ljava/lang/String;

    .line 175
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userRestriction_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
