.class public Lcom/android/internal/app/AppLockPolicy;
.super Ljava/lang/Object;
.source "AppLockPolicy.java"


# static fields
.field private static final APPLOCK_ENABLED:Ljava/lang/String; = "app_lock_enabled"

.field public static final BINDER_ARRAY_DISPLAYID:I = 0x0

.field public static final BINDER_ARRAY_EXCEPTIONLIST:I = 0x2

.field public static final BINDER_ARRAY_LOCKED:I = 0x0

.field public static final BINDER_ARRAY_MULTIWINDOW:I = 0x0

.field public static final BINDER_ARRAY_NOTIFICATION:I = 0x1

.field public static final BINDER_ARRAY_VERIFYING:I = 0x1

.field private static final BIOMETRICS_PASSWORD_TYPE:Ljava/lang/String; = "biometrics_password_type"

.field private static final BIOMETRICS_PATTERN_TYPE:Ljava/lang/String; = "biometrics_pattern_type"

.field private static final BIOMETRICS_PINCODE_TYPE:Ljava/lang/String; = "biometrics_pincode_type"

.field private static final BIOMETRICS_TYPE:Ljava/lang/String; = "biometrics_type"

.field private static final CHECK_APPLOCK_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_BIOMETRICS"

.field private static final CHECK_APPLOCK_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FACE"

.field private static final CHECK_APPLOCK_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FACE_SPASS"

.field private static final CHECK_APPLOCK_FINGERPRINT_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT"

.field private static final CHECK_APPLOCK_FINGERPRINT_PASSWORD_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PASSWORD"

.field private static final CHECK_APPLOCK_FINGERPRINT_PATTERN_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PATTERN"

.field private static final CHECK_APPLOCK_FINGERPRINT_PINCODE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PINCODE"

.field private static final CHECK_APPLOCK_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_IRISES"

.field private static final CHECK_APPLOCK_PASSWORD_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD"

.field private static final CHECK_APPLOCK_PASSWORD_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_BIOMETRICS"

.field private static final CHECK_APPLOCK_PASSWORD_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE"

.field private static final CHECK_APPLOCK_PASSWORD_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE_SPASS"

.field private static final CHECK_APPLOCK_PASSWORD_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_IRISES"

.field private static final CHECK_APPLOCK_PATTERN_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN"

.field private static final CHECK_APPLOCK_PATTERN_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_BIOMETRICS"

.field private static final CHECK_APPLOCK_PATTERN_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE"

.field private static final CHECK_APPLOCK_PATTERN_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE_SPASS"

.field private static final CHECK_APPLOCK_PATTERN_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_IRISES"

.field private static final CHECK_APPLOCK_PINCODE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE"

.field private static final CHECK_APPLOCK_PINCODE_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_BIOMETRICS"

.field private static final CHECK_APPLOCK_PINCODE_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE"

.field private static final CHECK_APPLOCK_PINCODE_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE_SPASS"

.field private static final CHECK_APPLOCK_PINCODE_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_IRISES"

.field private static final FACE_PASSWORD_TYPE:Ljava/lang/String; = "face_password_type"

.field private static final FACE_PATTERN_TYPE:Ljava/lang/String; = "face_pattern_type"

.field private static final FACE_PINCODE_TYPE:Ljava/lang/String; = "face_pincode_type"

.field private static final FACE_SPASS_PASSWORD_TYPE:Ljava/lang/String; = "face_spass_password_type"

.field private static final FACE_SPASS_PATTERN_TYPE:Ljava/lang/String; = "face_spass_pattern_type"

.field private static final FACE_SPASS_PINCODE_TYPE:Ljava/lang/String; = "face_spass_pincode_type"

.field private static final FACE_SPASS_TYPE:Ljava/lang/String; = "face_spass_type"

.field private static final FACE_TYPE:Ljava/lang/String; = "face_type"

.field private static final FINGERPRINT_PASSWORD_TYPE:Ljava/lang/String; = "fingerprint_password_type"

.field private static final FINGERPRINT_PATTERN_TYPE:Ljava/lang/String; = "fingerprint_pattern_type"

.field private static final FINGERPRINT_PINCODE_TYPE:Ljava/lang/String; = "fingerprint_pincode_type"

.field private static final FINGERPRINT_TYPE:Ljava/lang/String; = "fingerprint_type"

.field public static final FLOATING_MESSAGE_REQUEST:Ljava/lang/String; = "FLOATING_MESSAGE_REQUEST"

.field private static final HIDDEN_PACKAGE:Ljava/lang/String; = "ssecure_hidden_apps_packages"

.field private static final IRIS_PASSWORD_TYPE:Ljava/lang/String; = "iris_password_type"

.field private static final IRIS_PATTERN_TYPE:Ljava/lang/String; = "iris_pattern_type"

.field private static final IRIS_PINCODE_TYPE:Ljava/lang/String; = "iris_pincode_type"

.field private static final IRIS_TYPE:Ljava/lang/String; = "iris_type"

.field public static final LAUNCHER_REQUEST:Ljava/lang/String; = "LAUNCHER_REQUEST"

.field public static final LAUNCH_FROM_NOTIFICATION:Ljava/lang/String; = "LAUNCH_FROM_NOTIFICATION"

.field public static final LAUNCH_FROM_RESUME:Ljava/lang/String; = "LAUNCH_FROM_RESUME"

.field public static final LAUNCH_FROM_SETTINGS:Ljava/lang/String; = "APPLOCK_APPS_FROM_SETTINGS"

.field public static final LAUNCH_FROM_WECHAT_HUN:Ljava/lang/String; = "nofification_type"

.field public static final LOCKED_APP_CAN_SHOW_WHEN_LOCKED:Ljava/lang/String; = "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

.field private static final LOCKED_CLASSES:Ljava/lang/String; = "applock_locked_apps_classes"

.field private static final LOCKED_PACKAGE:Ljava/lang/String; = "applock_locked_apps_packages"

.field public static final LOCKED_PACKAGE_ACTIVITY_OPTIONS:Ljava/lang/String; = "LOCKED_PACKAGE_ACTIVITY_OPTIONS"

.field public static final LOCKED_PACKAGE_DISPLAYID:Ljava/lang/String; = "LOCKED_PACKAGE_DISPLAYID"

.field public static final LOCKED_PACKAGE_ICON:Ljava/lang/String; = "LOCKED_PACKAGE_ICON"

.field public static final LOCKED_PACKAGE_INTENT:Ljava/lang/String; = "LOCKED_PACKAGE_INTENT"

.field public static final LOCKED_PACKAGE_LABEL:Ljava/lang/String; = "LOCKED_PACKAGE_LABEL"

.field public static final LOCKED_PACKAGE_MULTIWINDOWSTYLE:Ljava/lang/String; = "LOCKED_PACKAGE_MULTIWINDOWSTYLE"

.field public static final LOCKED_PACKAGE_NAME:Ljava/lang/String; = "LOCKED_PACKAGE_NAME"

.field public static final LOCKED_PACKAGE_USERID:Ljava/lang/String; = "LOCKED_PACKAGE_USERID"

.field public static final LOCKED_PACKAGE_WINDOW_ATTRIBUTES:Ljava/lang/String; = "LOCKED_PACKAGE_WINDOW_ATTRIBUTES"

.field private static final LOCKED_TYPE:Ljava/lang/String; = "applock_lock_type"

.field private static final PACKAGE_NAME_CONTACTS:Ljava/lang/String; = "com.samsung.android.contacts"

.field private static final PASSWORD_TYPE:Ljava/lang/String; = "password_type"

.field private static final PATTERN_TYPE:Ljava/lang/String; = "pattern_type"

.field private static final PINCODE_TYPE:Ljava/lang/String; = "pincode_type"

.field public static final REQUEST_VERIFY_FROM:Ljava/lang/String; = "REQUEST_VERIFY_FROM"

.field public static final START_SERVICE_WITH_NO_ANIMATION:Ljava/lang/String; = "START_SERVICE_WITH_NO_ANIMATION"

.field private static final TAG:Ljava/lang/String; = "AppLockPolicy"

.field private static volatile mInstance:Lcom/android/internal/app/AppLockPolicy;

.field private static mIsAppLockEnabled:Z


# instance fields
.field private mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppLockSharedPref:Landroid/app/AppLockCoreState;

.field private mAppLockedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedLock:Ljava/lang/Object;

.field private mAppLockedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedRelatedClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppLockedVerifyingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApplockCallingExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLockedClasses:Ljava/lang/String;

.field private mLockedPackages:Ljava/lang/String;

.field private mLockedType:Ljava/lang/String;

.field private mLockedTypeInt:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$mupdateLockedApps(Lcom/android/internal/app/AppLockPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/AppLockPolicy;->mIsAppLockEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mApplockCallingExceptionList:Ljava/util/ArrayList;

    .line 483
    new-instance v1, Lcom/android/internal/app/AppLockPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AppLockPolicy$2;-><init>(Lcom/android/internal/app/AppLockPolicy;)V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedClasses:Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    .line 177
    new-instance v0, Landroid/app/AppLockCoreState;

    invoke-direct {v0, p1}, Landroid/app/AppLockCoreState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    .line 178
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->init()V

    .line 179
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockLaunchingExceptionList()V

    .line 180
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->getCallingExceptionList()V

    .line 181
    return-void
.end method

.method private static fileUriMayExposed(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 784
    if-eqz p0, :cond_1c

    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 785
    const/4 v0, 0x1

    return v0

    .line 787
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private getAppLockLaunchingExceptionList()V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "activities":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    return-void
.end method

.method private getCallingExceptionList()V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "activities":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mApplockCallingExceptionList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 191
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/app/AppLockPolicy;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 167
    sget-object v0, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    if-nez v0, :cond_13

    .line 168
    const-class v0, Lcom/android/internal/app/AppLockPolicy;

    monitor-enter v0

    .line 169
    :try_start_7
    new-instance v1, Lcom/android/internal/app/AppLockPolicy;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/AppLockPolicy;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    .line 170
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 172
    :cond_13
    :goto_13
    sget-object v0, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 791
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 792
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mUserManager:Landroid/os/UserManager;

    .line 794
    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private init()V
    .registers 4

    .line 453
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AppLockPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AppLockPolicy$1;-><init>(Lcom/android/internal/app/AppLockPolicy;)V

    const-class v2, Lcom/android/internal/app/AppLockPolicy;

    .line 476
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 479
    goto :goto_1c

    .line 477
    :catch_13
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppLockPolicy"

    const-string/jumbo v2, "onUserSwitch, observe()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 482
    return-void
.end method

.method public static isSupportAppLock()Z
    .registers 1

    .line 727
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    return v0
.end method

.method public static isSupportSSecure()Z
    .registers 1

    .line 809
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_SPROTECT:Z

    return v0
.end method

.method public static skipLockWhenStart(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 742
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    const-string v1, "AppLockPolicy"

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 743
    const-string v0, "intent is starting with S secure, skip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return v2

    .line 750
    :cond_13
    if-eqz p3, :cond_22

    .line 751
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_22

    .line 752
    const-string v0, "intent is starting in dex display, skip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return v2

    .line 760
    :cond_22
    if-eqz p3, :cond_3e

    .line 761
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 763
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 764
    :cond_38
    const-string v0, "intent is starting in multi WindowingMode, skip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return v2

    .line 767
    :cond_3e
    const-string/jumbo v0, "nofification_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 768
    const-string/jumbo v0, "starting from WeChat HeadsUp Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return v2

    .line 771
    :cond_4e
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 772
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 773
    .local v3, "runningTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 774
    .local v5, "infor":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    if-eq v6, v2, :cond_7b

    .line 776
    const-string v4, "hasMultiWindowRunning, skip"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return v2

    .line 779
    .end local v5    # "infor":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_7b
    goto :goto_5f

    .line 780
    :cond_7c
    const/4 v1, 0x0

    return v1
.end method

.method private updateLockedApps()V
    .registers 12

    .line 529
    iget v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    packed-switch v0, :pswitch_data_11a

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    goto/16 :goto_84

    .line 597
    :pswitch_a
    const-string v0, "face_spass_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 598
    goto/16 :goto_84

    .line 594
    :pswitch_10
    const-string v0, "face_spass_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 595
    goto/16 :goto_84

    .line 591
    :pswitch_16
    const-string v0, "face_spass_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 592
    goto/16 :goto_84

    .line 588
    :pswitch_1c
    const-string v0, "face_spass_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 589
    goto/16 :goto_84

    .line 585
    :pswitch_22
    const-string v0, "face_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 586
    goto :goto_84

    .line 582
    :pswitch_27
    const-string v0, "face_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 583
    goto :goto_84

    .line 579
    :pswitch_2c
    const-string v0, "face_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 580
    goto :goto_84

    .line 576
    :pswitch_31
    const-string v0, "face_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 577
    goto :goto_84

    .line 573
    :pswitch_36
    const-string v0, "biometrics_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 574
    goto :goto_84

    .line 570
    :pswitch_3b
    const-string v0, "biometrics_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 571
    goto :goto_84

    .line 567
    :pswitch_40
    const-string v0, "biometrics_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 568
    goto :goto_84

    .line 564
    :pswitch_45
    const-string v0, "biometrics_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 565
    goto :goto_84

    .line 561
    :pswitch_4a
    const-string v0, "iris_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 562
    goto :goto_84

    .line 558
    :pswitch_4f
    const-string v0, "iris_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 559
    goto :goto_84

    .line 555
    :pswitch_54
    const-string v0, "iris_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 556
    goto :goto_84

    .line 552
    :pswitch_59
    const-string v0, "iris_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 553
    goto :goto_84

    .line 549
    :pswitch_5e
    const-string v0, "fingerprint_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 550
    goto :goto_84

    .line 546
    :pswitch_63
    const-string v0, "fingerprint_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 547
    goto :goto_84

    .line 543
    :pswitch_68
    const-string v0, "fingerprint_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 544
    goto :goto_84

    .line 540
    :pswitch_6d
    const-string v0, "fingerprint_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 541
    goto :goto_84

    .line 537
    :pswitch_72
    const-string/jumbo v0, "password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 538
    goto :goto_84

    .line 534
    :pswitch_78
    const-string/jumbo v0, "pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 535
    goto :goto_84

    .line 531
    :pswitch_7e
    const-string/jumbo v0, "pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 532
    nop

    .line 604
    :goto_84
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_87
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_cf

    .line 606
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "lockedPackageArray":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v1

    move v5, v2

    :goto_99
    if-ge v5, v4, :cond_cd

    aget-object v6, v1, v5

    .line 609
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v7, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 611
    iget-object v7, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 612
    .local v7, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ca

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 613
    .local v9, "relatedPackage":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c9

    .line 614
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v9    # "relatedPackage":Ljava/lang/String;
    :cond_c9
    goto :goto_b4

    .line 608
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ca
    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    .line 619
    :cond_cd
    iput-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    .line 622
    .end local v1    # "lockedPackageArray":[Ljava/lang/String;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_cf
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedClasses:Ljava/lang/String;

    if-eqz v1, :cond_115

    .line 623
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "lockedClassArray":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v1

    :goto_df
    if-ge v2, v4, :cond_113

    aget-object v5, v1, v2

    .line 626
    .local v5, "className":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_110

    .line 628
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 629
    .local v6, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_fa
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_110

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 630
    .local v8, "relatedClass":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10f

    .line 631
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .end local v8    # "relatedClass":Ljava/lang/String;
    :cond_10f
    goto :goto_fa

    .line 625
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_110
    add-int/lit8 v2, v2, 0x1

    goto :goto_df

    .line 636
    :cond_113
    iput-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    .line 638
    .end local v1    # "lockedClassArray":[Ljava/lang/String;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_115
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_117
    move-exception v1

    monitor-exit v0
    :try_end_119
    .catchall {:try_start_87 .. :try_end_119} :catchall_117

    throw v1

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_78
        :pswitch_72
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public clearAppLockedUnLockedApp()V
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 358
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 359
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public dumpAppLockPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)Z
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 665
    const-string v0, "AppLockPolicy dump start"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "LockedPackage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 671
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_18

    .line 674
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_43

    .line 675
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 677
    :cond_43
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string v5, "LockedClass["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 681
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_53

    .line 684
    :cond_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_79

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 687
    :cond_79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const-string v5, "HasUnLockedPackage["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 691
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_87

    .line 694
    :cond_9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_ad

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 697
    :cond_ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v5, "HasUnLockedClass["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 701
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_bb

    .line 704
    :cond_ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_e1

    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 707
    :cond_e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v5, "mAppLockedVerifyingList["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ef
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_102

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 711
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_ef

    .line 714
    :cond_102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_115

    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 717
    :cond_115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    const-string v1, "AppLockPolicy dump end"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 723
    return v2
.end method

.method public getAppLockedCheckAction()Ljava/lang/String;
    .registers 4

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "checkAction":Ljava/lang/String;
    const-string/jumbo v1, "pattern_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 231
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN"

    goto/16 :goto_13d

    .line 232
    :cond_10
    const-string/jumbo v1, "password_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 233
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD"

    goto/16 :goto_13d

    .line 234
    :cond_1f
    const-string/jumbo v1, "pincode_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 235
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE"

    goto/16 :goto_13d

    .line 236
    :cond_2e
    const-string v1, "fingerprint_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 237
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT"

    goto/16 :goto_13d

    .line 238
    :cond_3c
    const-string v1, "fingerprint_pattern_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 239
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PATTERN"

    goto/16 :goto_13d

    .line 240
    :cond_4a
    const-string v1, "fingerprint_pincode_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 241
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PINCODE"

    goto/16 :goto_13d

    .line 242
    :cond_58
    const-string v1, "fingerprint_password_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 243
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PASSWORD"

    goto/16 :goto_13d

    .line 244
    :cond_66
    const-string v1, "iris_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 245
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_IRISES"

    goto/16 :goto_13d

    .line 246
    :cond_74
    const-string v1, "iris_pattern_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 247
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_IRISES"

    goto/16 :goto_13d

    .line 248
    :cond_82
    const-string v1, "iris_pincode_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 249
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_IRISES"

    goto/16 :goto_13d

    .line 250
    :cond_90
    const-string v1, "iris_password_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 251
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_IRISES"

    goto/16 :goto_13d

    .line 252
    :cond_9e
    const-string v1, "biometrics_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 253
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_BIOMETRICS"

    goto/16 :goto_13d

    .line 254
    :cond_ac
    const-string v1, "biometrics_pattern_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 255
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_BIOMETRICS"

    goto/16 :goto_13d

    .line 256
    :cond_ba
    const-string v1, "biometrics_pincode_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 257
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_BIOMETRICS"

    goto/16 :goto_13d

    .line 258
    :cond_c8
    const-string v1, "biometrics_password_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 259
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_BIOMETRICS"

    goto/16 :goto_13d

    .line 260
    :cond_d6
    const-string v1, "face_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 261
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FACE"

    goto :goto_13d

    .line 262
    :cond_e3
    const-string v1, "face_pattern_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 263
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE"

    goto :goto_13d

    .line 264
    :cond_f0
    const-string v1, "face_pincode_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 265
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE"

    goto :goto_13d

    .line 266
    :cond_fd
    const-string v1, "face_password_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 267
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE"

    goto :goto_13d

    .line 268
    :cond_10a
    const-string v1, "face_spass_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    .line 269
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FACE_SPASS"

    goto :goto_13d

    .line 270
    :cond_117
    const-string v1, "face_spass_pattern_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 271
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE_SPASS"

    goto :goto_13d

    .line 272
    :cond_124
    const-string v1, "face_spass_pincode_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 273
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE_SPASS"

    goto :goto_13d

    .line 274
    :cond_131
    const-string v1, "face_spass_password_type"

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 275
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE_SPASS"

    .line 277
    :cond_13d
    :goto_13d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppLockedCheckAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLockPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-object v0
.end method

.method public getAppLockedClassList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 379
    .local v0, "lockedist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_a
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 381
    .local v3, "st":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 382
    nop

    .end local v3    # "st":Ljava/lang/String;
    goto :goto_10

    .line 383
    :cond_21
    monitor-exit v1

    .line 385
    return-object v0

    .line 383
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_23

    throw v2
.end method

.method public getAppLockedLockType()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLockedPackageList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getApplockLockedAppsClass()Ljava/lang/String;
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplockLockedAppsPackage()Ljava/lang/String;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplockType()I
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockType()I

    move-result v0

    return v0
.end method

.method public getSsecureHiddenAppsPackages()Ljava/lang/String;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getSsecureHiddenAppsPackages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActivityInExceptionList(Ljava/lang/String;)Z
    .registers 6
    .param p1, "activityName"    # Ljava/lang/String;

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 201
    return v1

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 205
    const/4 v0, 0x1

    return v0

    .line 207
    .end local v2    # "s":Ljava/lang/String;
    :cond_22
    goto :goto_e

    .line 208
    :cond_23
    const-string v0, "AppLockPolicy"

    const-string v2, "isActivityInExceptionList: "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v1
.end method

.method public isAppLockBypassList(Ljava/lang/String;)Z
    .registers 6
    .param p1, "activityName"    # Ljava/lang/String;

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 214
    return v1

    .line 216
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mApplockCallingExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 218
    const/4 v0, 0x1

    return v0

    .line 220
    .end local v2    # "s":Ljava/lang/String;
    :cond_22
    goto :goto_e

    .line 221
    :cond_23
    return v1
.end method

.method public isAppLockedClass(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 409
    return v1

    .line 411
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_b
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 413
    monitor-exit v0

    return v1

    .line 415
    :cond_15
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 416
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 418
    :cond_20
    monitor-exit v0

    .line 419
    return v1

    .line 418
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v1
.end method

.method public isAppLockedPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 363
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/internal/app/AppLockPolicy;->mIsAppLockEnabled:Z

    if-nez v0, :cond_c

    .line 364
    return v1

    .line 366
    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 368
    monitor-exit v0

    return v1

    .line 370
    :cond_19
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 371
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 373
    :cond_2c
    monitor-exit v0

    .line 374
    return v1

    .line 373
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public isAppLockedVerifying(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 440
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 441
    return v1

    .line 443
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_b
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 445
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 447
    :cond_16
    monitor-exit v0

    .line 448
    return v1

    .line 447
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public isApplockEnabled()Z
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->isApplockEnabled()Z

    move-result v0

    return v0
.end method

.method public isManagedProfileUserId(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 801
    const/16 v0, 0xa

    .line 802
    .local v0, "AFW_USER_ID_START":I
    const/16 v1, 0x5e

    .line 803
    .local v1, "AFW_USER_ID_END":I
    if-lt p1, v0, :cond_a

    if-gt p1, v1, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    return v2
.end method

.method public reloadFromSettings()V
    .registers 9

    .line 642
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 643
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "applock_locked_apps_packages"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "lockedPackages":Ljava/lang/String;
    const-string v3, "applock_locked_apps_classes"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, "lockedClasses":Ljava/lang/String;
    const-string/jumbo v4, "ssecure_hidden_apps_packages"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 646
    .local v4, "hiddenPkgs":Ljava/lang/String;
    const-string v5, "applock_lock_type"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 647
    .local v5, "lockedTypeInt":I
    const-string v7, "app_lock_enabled"

    invoke-static {v0, v7, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2b

    move v6, v7

    :cond_2b
    move v2, v6

    .line 648
    .local v2, "applockEnabled":Z
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6}, Landroid/app/AppLockCoreState;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    .line 649
    if-eqz v1, :cond_55

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 650
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6, v1}, Landroid/app/AppLockCoreState;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    .line 651
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6, v3}, Landroid/app/AppLockCoreState;->setApplockLockedAppsClass(Ljava/lang/String;)V

    .line 652
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6, v5}, Landroid/app/AppLockCoreState;->setApplockType(I)V

    .line 653
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6, v2}, Landroid/app/AppLockCoreState;->setApplockEnabled(Z)V

    .line 654
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6, v4}, Landroid/app/AppLockCoreState;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    .line 656
    :cond_55
    return-void
.end method

.method public setAppLockedUnLockClass(Ljava/lang/String;)V
    .registers 7
    .param p1, "className"    # Ljava/lang/String;

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 390
    return-void

    .line 392
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 394
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 396
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 397
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 398
    .local v3, "relatedClass":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 399
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v3    # "relatedClass":Ljava/lang/String;
    :cond_44
    goto :goto_2b

    .line 404
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_45
    monitor-exit v0

    .line 405
    return-void

    .line 404
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_47

    throw v1
.end method

.method public setAppLockedUnLockPackage(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 337
    return-void

    .line 339
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 341
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 343
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 344
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 345
    .local v3, "relatedPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 346
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v3    # "relatedPackage":Ljava/lang/String;
    :cond_44
    goto :goto_2b

    .line 351
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_45
    monitor-exit v0

    .line 352
    return-void

    .line 351
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_47

    throw v1
.end method

.method public setAppLockedVerifying(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "verifying"    # Z

    .line 423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 424
    return-void

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    if-eqz p2, :cond_1a

    .line 428
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 429
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 432
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 433
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 436
    :cond_27
    :goto_27
    monitor-exit v0

    .line 437
    return-void

    .line 436
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setApplockEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 305
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockEnabled(Z)V

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 307
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 308
    return-void
.end method

.method public setApplockLockedAppsClass(Ljava/lang/String;)V
    .registers 3
    .param p1, "classes"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockLockedAppsClass(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 295
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 296
    return-void
.end method

.method public setApplockLockedAppsPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packages"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 289
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 290
    return-void
.end method

.method public setApplockType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 299
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockType(I)V

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 301
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 302
    return-void
.end method

.method public setSsecureHiddenAppsPackages(Ljava/lang/String;)V
    .registers 3
    .param p1, "packages"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 313
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 314
    return-void
.end method

.method public updateSettings()V
    .registers 2

    .line 658
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedClasses:Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    .line 661
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->isApplockEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/AppLockPolicy;->mIsAppLockEnabled:Z

    .line 662
    return-void
.end method
