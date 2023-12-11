.class public Landroid/sec/clipboard/util/ClipboardPolicyObserver;
.super Landroid/database/ContentObserver;
.source "ClipboardPolicyObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.rcppolicyprovider"

.field private static final CLIPBOARD_ALLOWED_ALLOWLIST_APP_URI:Landroid/net/Uri;

.field private static final CLIPBOARD_ALLOWED_DENYLIST_APP_URI:Landroid/net/Uri;

.field private static final CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

.field private static final CLIPBOARD_APPLICATION_URI:Landroid/net/Uri;

.field private static final CLIPBOARD_RESCTRICTION_URI:Landroid/net/Uri;

.field private static final CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final SAMSUNG_COCKTAILBAR_PKGNAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final SAMSUNG_HONEYBOARD_PKGNAME:Ljava/lang/String; = "com.samsung.android.honeyboard"

.field private static final SAMSUNG_KEYBOARD_PKGNAME:Ljava/lang/String; = "com.sec.android.inputmethod"

.field private static final TABLE_NAME:Ljava/lang/String; = "RCP_DATA"

.field private static final URL:Ljava/lang/String; = "content://com.sec.knox.rcppolicyprovider/RCP_DATA"

.field private static instance:Landroid/sec/clipboard/util/ClipboardPolicyObserver;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mClipboardAllowListPolicy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mClipboardAllowListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mClipboardAllowedPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardDenyListPolicy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mClipboardDenyListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mClipboardPolicyChangeListener:Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;

.field private mClipboardSharedAllowedKnoxToPersonalPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardSharedAllowedPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mUm:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    const-string v0, "content://com.sec.knox.rcppolicyprovider/RCP_DATA"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CONTENT_URI:Landroid/net/Uri;

    .line 79
    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    .line 80
    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    .line 81
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_RESCTRICTION_URI:Landroid/net/Uri;

    .line 82
    const-string v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_APPLICATION_URI:Landroid/net/Uri;

    .line 83
    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_DENYLIST_APP_URI:Landroid/net/Uri;

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_DENYLIST_APP_URI:Landroid/net/Uri;

    .line 84
    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_ALLOWLIST_APP_URI:Landroid/net/Uri;

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_ALLOWLIST_APP_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 92
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 58
    const-string v0, "ClipboardPolicyObserver"

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    .line 60
    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    .line 61
    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicy:Ljava/util/Map;

    .line 62
    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicy:Ljava/util/Map;

    .line 63
    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedKnoxToPersonalPolicy:Ljava/util/HashMap;

    .line 64
    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;

    .line 68
    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 69
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 70
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mIsInitialized:Z

    .line 73
    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardPolicyChangeListener:Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;

    .line 93
    iput-object p1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    .line 94
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mUm:Landroid/os/IUserManager;

    .line 95
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->initHashMap()V

    .line 96
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateRCPMap()V

    .line 97
    invoke-virtual {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardAllowedMap(I)V

    .line 98
    invoke-virtual {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardSharedAllowedMap(I)V

    .line 100
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->instance:Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    if-nez v0, :cond_20

    .line 118
    const-class v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    monitor-enter v0

    .line 119
    :try_start_7
    sget-object v1, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->instance:Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    if-nez v1, :cond_1b

    .line 120
    new-instance v1, Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v1, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->instance:Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 122
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1

    .line 124
    :cond_20
    :goto_20
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->instance:Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    return-object v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    .line 320
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->KNOX_V2_ENABLED:Z

    if-nez v0, :cond_6

    .line 321
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_6
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_17

    .line 324
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 327
    :cond_17
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getTopActivityPackageName()Ljava/lang/String;
    .registers 10

    .line 486
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 487
    .local v0, "callerUid":I
    const-string v1, ""

    .line 489
    .local v1, "callerPackageName":Ljava/lang/String;
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "packageList":[Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    array-length v5, v2

    if-ne v5, v3, :cond_38

    aget-object v5, v2, v4

    .line 491
    const-string v6, "com.sec.android.inputmethod"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    aget-object v5, v2, v4

    .line 492
    const-string v6, "com.samsung.android.honeyboard"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    aget-object v5, v2, v4

    .line 493
    const-string v6, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 494
    aget-object v1, v2, v4

    goto :goto_61

    .line 496
    :cond_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 497
    .local v5, "identity":J
    iget-object v7, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 498
    .local v7, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v7, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 500
    .local v3, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_5e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5e

    .line 501
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 502
    .local v4, "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 504
    .end local v4    # "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    .end local v3    # "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "identity":J
    .end local v7    # "activityManager":Landroid/app/ActivityManager;
    :goto_61
    return-object v1
.end method

.method private getUserId()I
    .registers 2

    .line 315
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 316
    .local v0, "userId":I
    return v0
.end method

.method private initHashMap()V
    .registers 2

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedKnoxToPersonalPolicy:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicy:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicy:Ljava/util/Map;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mIsInitialized:Z

    .line 110
    return-void
.end method

.method private isAllowCrossProfileCopyPaste(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 363
    const/4 v0, 0x0

    .line 366
    .local v0, "canCrossCopyPaste":Z
    :try_start_1
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mUm:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 367
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_31
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_e} :catch_12

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 372
    .end local v1    # "b":Landroid/os/Bundle;
    :goto_11
    goto :goto_4b

    .line 370
    :catch_12
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserRestrictions failed : SecurityException occured "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 368
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_31
    move-exception v1

    .line 369
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get DISALLOW_CROSS_PROFILE_COPY_PASTE value failed: RemoteException occured "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_11

    .line 373
    :goto_4b
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllowCrossProfileCopyPaste ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v0
.end method

.method private isInitialized()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mIsInitialized:Z

    return v0
.end method

.method private isKnoxVersion1(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 462
    return v1

    .line 466
    :cond_8
    const-string/jumbo v0, "sec_container_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 467
    const-string v0, "com.sec.knox.containeragent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 468
    const-string v0, "com.sec.android.app.knoxlauncher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    nop

    .line 466
    :goto_24
    return v1
.end method

.method private isListIncludePackage(Ljava/util/List;Ljava/lang/String;)Z
    .registers 7
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 472
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 474
    .local v0, "isIncluded":Z
    if-eqz p1, :cond_2b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 475
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    .local v2, "name":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    .line 480
    .end local v2    # "name":Ljava/lang/String;
    :cond_28
    goto :goto_d

    .line 477
    .restart local v2    # "name":Ljava/lang/String;
    :cond_29
    :goto_29
    const/4 v0, 0x1

    .line 478
    nop

    .line 482
    .end local v2    # "name":Ljava/lang/String;
    :cond_2b
    return v0
.end method

.method private updateClipboardAllowListMap(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 273
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 275
    :try_start_12
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_APPLICATION_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string/jumbo v4, "getPackagesFromDisableClipboardWhiteListPerUidInternal"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 278
    if-eqz v0, :cond_3f

    .line 279
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 281
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3e

    .line 282
    const-string v2, "clipboard_whitelist_perUid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 283
    .local v2, "serial":Ljava/io/Serializable;
    move-object v3, v2

    check-cast v3, Ljava/util/HashMap;

    .line 284
    .local v3, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v4, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "serial":Ljava/io/Serializable;
    .end local v3    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3e
    goto :goto_48

    .line 287
    :cond_3f
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_48} :catch_53
    .catchall {:try_start_12 .. :try_end_48} :catchall_51

    .line 292
    :goto_48
    if-eqz v0, :cond_68

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_68

    .line 293
    goto :goto_65

    .line 292
    :catchall_51
    move-exception v1

    goto :goto_73

    .line 289
    :catch_53
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    :try_start_54
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateClipboardAllowListMap - exception occured!."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_51

    .line 292
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_68

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_68

    .line 293
    :goto_65
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_68
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 296
    nop

    .line 299
    return-void

    .line 292
    :goto_73
    if-eqz v0, :cond_7e

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 293
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_7e
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 296
    throw v1
.end method

.method private updateClipboardAllowedMap(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 184
    const-string v0, "false"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_RESCTRICTION_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string/jumbo v5, "isClipboardAllowedAsUser"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    .line 203
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 188
    if-eqz v0, :cond_82

    .line 190
    :try_start_22
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    const-string/jumbo v2, "isClipboardAllowedAsUser"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateClipboardAllowedMap - userId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_60} :catch_64
    .catchall {:try_start_22 .. :try_end_60} :catchall_62

    .line 199
    nop

    .end local v2    # "result":Ljava/lang/String;
    goto :goto_7a

    :catchall_62
    move-exception v1

    goto :goto_7e

    .line 194
    :catch_64
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    :try_start_65
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateClipboardAllowedMap, exception is occured hence set true"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_65 .. :try_end_79} :catchall_62

    .line 199
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 200
    goto :goto_93

    .line 199
    :goto_7e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 200
    throw v1

    .line 202
    :cond_82
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateClipboardAllowedMap, cursor is null hence set true"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_93
    return-void
.end method

.method private updateClipboardDenyListMap(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 240
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 242
    :try_start_12
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_APPLICATION_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string/jumbo v4, "getPackagesFromDisableClipboardBlackListPerUidInternal"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 245
    if-eqz v0, :cond_3f

    .line 246
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 248
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3e

    .line 249
    const-string v2, "clipboard_blacklist_perUid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 250
    .local v2, "serial":Ljava/io/Serializable;
    move-object v3, v2

    check-cast v3, Ljava/util/HashMap;

    .line 251
    .local v3, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v4, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "serial":Ljava/io/Serializable;
    .end local v3    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3e
    goto :goto_48

    .line 254
    :cond_3f
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_48} :catch_53
    .catchall {:try_start_12 .. :try_end_48} :catchall_51

    .line 259
    :goto_48
    if-eqz v0, :cond_68

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_68

    .line 260
    goto :goto_65

    .line 259
    :catchall_51
    move-exception v1

    goto :goto_73

    .line 256
    :catch_53
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    :try_start_54
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateClipboardDenyListMap - exception occured!."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_51

    .line 259
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_68

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_68

    .line 260
    :goto_65
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_68
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 263
    nop

    .line 266
    return-void

    .line 259
    :goto_73
    if-eqz v0, :cond_7e

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 260
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_7e
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 263
    throw v1
.end method

.method private updateClipboardSharedAllowedMap(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_RESCTRICTION_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string/jumbo v4, "isClipboardShareAllowedAsUser"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 214
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    .line 229
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 214
    if-eqz v0, :cond_80

    .line 216
    :try_start_20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    const-string/jumbo v2, "isClipboardShareAllowedAsUser"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateClipboardSharedAllowedMap - userId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", result : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5e} :catch_62
    .catchall {:try_start_20 .. :try_end_5e} :catchall_60

    .line 225
    nop

    .end local v2    # "result":Ljava/lang/String;
    goto :goto_78

    :catchall_60
    move-exception v1

    goto :goto_7c

    .line 220
    :catch_62
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    :try_start_63
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateClipboardSharedAllowedMap, exception is occured hence set true"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_63 .. :try_end_77} :catchall_60

    .line 225
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 226
    goto :goto_91

    .line 225
    :goto_7c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 226
    throw v1

    .line 228
    :cond_80
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateClipboardSharedAllowedMap, cursor is null hence set true"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_91
    return-void
.end method

.method private updateRCPMap()V
    .registers 7

    .line 165
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateRCPMap is called"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 167
    const/4 v0, -0x1

    .line 168
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-eqz v1, :cond_74

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_74

    .line 170
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 171
    const/4 v3, -0x1

    if-le v0, v3, :cond_59

    .line 172
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedKnoxToPersonalPolicy:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/SemPersonaManager;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/SemPersonaManager;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 175
    :cond_59
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong user : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 178
    .end local v0    # "userId":I
    .end local v1    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    :cond_74
    goto :goto_7c

    .line 179
    :cond_75
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string v1, "PersonaManager is null"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_7c
    return-void
.end method


# virtual methods
.method public getPersonaId()I
    .registers 3

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 304
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    .line 305
    if-nez v0, :cond_1a

    .line 306
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getUserId()I

    move-result v0

    goto :goto_1a

    .line 309
    :cond_16
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getUserId()I

    move-result v0

    .line 311
    :cond_1a
    :goto_1a
    return v0
.end method

.method public isAllowedSharingKnoxDataToPersonal(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 356
    invoke-direct {p0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isAllowCrossProfileCopyPaste(I)Z

    move-result v0

    .line 357
    .local v0, "canCrossCopyPaste":Z
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardSharedAllowed(I)Z

    move-result v1

    .line 358
    .local v1, "canClipboardSharedAllowed":Z
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAllowedSharingKnoxDataToPersonal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", canClipboardSharedAllowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz v0, :cond_3b

    if-eqz v1, :cond_3b

    const/4 v2, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    return v2
.end method

.method public isAllowedSharingPersonalDataToKnox(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 383
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAllowedSharingPersonalDataToKnox, userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    .line 386
    const/4 v0, 0x1

    .local v0, "result":Z
    goto :goto_37

    .line 388
    .end local v0    # "result":Z
    :cond_27
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 390
    .restart local v0    # "result":Z
    :goto_37
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardSharedAllowed(I)Z

    move-result v2

    .line 391
    .local v2, "canClipboardSharedAllowed":Z
    if-eqz v0, :cond_41

    if-eqz v2, :cond_41

    const/4 v1, 0x1

    :cond_41
    return v1
.end method

.method public isClipboardAllowed(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 332
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 333
    const/4 v0, 0x1

    .local v0, "result":Z
    goto :goto_1e

    .line 335
    .end local v0    # "result":Z
    :cond_e
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 337
    .restart local v0    # "result":Z
    :goto_1e
    return v0
.end method

.method public isClipboardSharedAllowed(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 342
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 343
    const/4 v0, 0x1

    .local v0, "result":Z
    goto :goto_1e

    .line 345
    .end local v0    # "result":Z
    :cond_e
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 347
    .restart local v0    # "result":Z
    :goto_1e
    return v0
.end method

.method public isPackageAllowed(I)Z
    .registers 15
    .param p1, "userId"    # I

    .line 395
    const/4 v0, 0x1

    .line 396
    .local v0, "isAllowed":Z
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getTopActivityPackageName()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 399
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "package name is empty."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v2, 0x0

    return v2

    .line 403
    :cond_15
    invoke-direct {p0, v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isKnoxVersion1(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 404
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string v3, "KNOX 1.0 not supported so blocking it."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v2, 0x1

    return v2

    .line 408
    :cond_24
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 409
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 412
    :try_start_36
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_cc
    .catchall {:try_start_36 .. :try_end_42} :catchall_ca

    .line 415
    .local v2, "clipboardDenyListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v2, :cond_58

    .line 416
    nop

    .line 452
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 453
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 416
    return v0

    .line 419
    :cond_58
    :try_start_58
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5c} :catch_cc
    .catchall {:try_start_58 .. :try_end_5c} :catchall_ca

    .line 421
    .local v3, "mdmAdminUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v3, :cond_72

    .line 422
    nop

    .line 452
    iget-object v4, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 453
    iget-object v4, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 422
    return v0

    .line 425
    :cond_72
    :try_start_72
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 426
    .local v5, "uid":J
    iget-object v7, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 427
    .local v7, "denyListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v8, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 428
    .local v8, "allowListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .line 429
    .local v9, "denyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 431
    .local v10, "allowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_ad

    .line 432
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v9, v11

    .line 435
    :cond_ad
    if-eqz v8, :cond_ba

    .line 436
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v10, v11

    .line 439
    :cond_ba
    invoke-direct {p0, v9, v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isListIncludePackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    .line 441
    .local v11, "isDenyListIncludePackage":Z
    if-eqz v11, :cond_c8

    .line 442
    invoke-direct {p0, v10, v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isListIncludePackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v12
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_c4} :catch_cc
    .catchall {:try_start_72 .. :try_end_c4} :catchall_ca

    move v0, v12

    .line 444
    if-nez v0, :cond_c8

    .line 445
    goto :goto_c9

    .line 448
    .end local v5    # "uid":J
    .end local v7    # "denyListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "allowListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "denyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "allowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "isDenyListIncludePackage":Z
    :cond_c8
    goto :goto_76

    .line 452
    .end local v2    # "clipboardDenyListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "mdmAdminUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_c9
    :goto_c9
    goto :goto_e7

    :catchall_ca
    move-exception v2

    goto :goto_128

    .line 449
    :catch_cc
    move-exception v2

    .line 450
    .local v2, "e":Ljava/lang/Exception;
    :try_start_cd
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPackageAllowed, Exception occure. isAllowed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_cd .. :try_end_e6} :catchall_ca

    .line 452
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_e7
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 453
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 454
    nop

    .line 456
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPackageAllowed, userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v0

    .line 452
    :goto_128
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardDenyListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 453
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 454
    throw v2
.end method

.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 129
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 130
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 134
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 135
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChage is calledm uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 139
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChage is calledm uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_30

    .line 142
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->initHashMap()V

    .line 145
    :cond_30
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_3c

    .line 146
    invoke-direct {p0, p3}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardAllowedMap(I)V

    goto :goto_6b

    .line 147
    :cond_3c
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_48

    .line 148
    invoke-direct {p0, p3}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardSharedAllowedMap(I)V

    goto :goto_6b

    .line 149
    :cond_48
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_54

    .line 150
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateRCPMap()V

    goto :goto_6b

    .line 151
    :cond_54
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_DENYLIST_APP_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_60

    .line 152
    invoke-direct {p0, p3}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardDenyListMap(I)V

    goto :goto_6b

    .line 153
    :cond_60
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_ALLOWLIST_APP_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_6b

    .line 154
    invoke-direct {p0, p3}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardAllowListMap(I)V

    .line 157
    :cond_6b
    :goto_6b
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardPolicyChangeListener:Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;

    if-eqz v0, :cond_73

    .line 158
    invoke-interface {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;->onChanged()V

    goto :goto_7b

    .line 160
    :cond_73
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onChage - ClipboardPolicyChangeListener is null"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_7b
    return-void
.end method
