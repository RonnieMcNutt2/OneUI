.class public Lcom/samsung/android/app/SemAppLockManager;
.super Ljava/lang/Object;
.source "SemAppLockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemAppLockManager"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/SemAppLockManager;->mContext:Landroid/content/Context;

    .line 49
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 50
    return-void
.end method

.method private getActivityManager()Landroid/app/ActivityManager;
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_10

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 56
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method


# virtual methods
.method public getCheckAction()Ljava/lang/String;
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/SemAppLockManager;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/app/SemAppLockManager;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppLockedPackageList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 116
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAppLockEnabled()Z
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/SemAppLockManager;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isApplockEnabled()Z

    move-result v0

    return v0

    .line 71
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageLocked(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/SemAppLockManager;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/SemAppLockManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 101
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
