.class public Lcom/samsung/android/app/SemExecutableManager;
.super Ljava/lang/Object;
.source "SemExecutableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    }
.end annotation


# static fields
.field public static final EXTRA_EXECUTABLE_ICON:Ljava/lang/String; = "com.samsung.android.execute.extra.ICON"

.field public static final EXTRA_EXECUTABLE_INTENT:Ljava/lang/String; = "com.samsung.android.execute.extra.INTENT"

.field public static final EXTRA_EXECUTABLE_NAME:Ljava/lang/String; = "com.samsung.android.execute.extra.NAME"

.field public static final EXTRA_EXECUTABLE_SMALL_ICON:Ljava/lang/String; = "com.samsung.android.execute.extra.SMALLICON"

.field public static final EXTRA_SHORTCUT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.shortcut.PACKAGE_NAME"

.field public static final EXTRA_SHORTCUT_USER_ID:Ljava/lang/String; = "com.samsung.android.shortcut.USER_ID"

.field private static final TAG:Ljava/lang/String; = "SemExecutableManager"

.field private static mService:Lcom/samsung/android/app/ISemExecuteManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    .line 104
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableManager;->mUserManager:Landroid/os/UserManager;

    .line 105
    return-void
.end method

.method private getDefaultLauncherPackage()Ljava/lang/String;
    .registers 4

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 261
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1f

    .line 262
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 264
    :cond_1f
    const/4 v2, 0x0

    return-object v2
.end method

.method private getService()Lcom/samsung/android/app/ISemExecuteManager;
    .registers 5

    .line 146
    sget-object v0, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    if-nez v0, :cond_3a

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 148
    .local v0, "um":Lcom/samsung/android/sepunion/SemUnionManager;
    const-string v1, "execute"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 149
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ISemExecuteManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getService: retry to get service impl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemExecutableManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v0    # "um":Lcom/samsung/android/sepunion/SemUnionManager;
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_3a
    sget-object v0, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    return-object v0
.end method

.method private getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 464
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getDefaultLauncherPackage()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "queryTargetPackage":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 466
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 467
    const-string v1, "SemExecutableManager"

    const-string/jumbo v2, "getShortcuts: can not launcher name "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_14
    :try_start_14
    sget-object v3, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/app/ISemExecuteManager;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_24} :catch_25

    return-object v1

    .line 472
    :catch_25
    move-exception v1

    .line 473
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "density"    # I

    .line 439
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 440
    return-object v0

    .line 442
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v1, p3}, Lcom/samsung/android/app/SemExecutableManager;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 443
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 444
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, p2, p4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_17} :catch_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_17} :catch_18

    return-object v0

    .line 445
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "res":Landroid/content/res/Resources;
    :catch_18
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "target"    # Landroid/os/UserHandle;

    .line 432
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 433
    const-string v0, "SemExecutableManager"

    const-string v1, "Accessing other profiles/users from managed profile is no longer allowed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_19
    return-void
.end method

.method private startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "startActivityOptions"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .line 406
    move-object v1, p0

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getService()Lcom/samsung/android/app/ISemExecuteManager;

    move-result-object v0

    const-string v2, "SemExecutableManager"

    if-nez v0, :cond_10

    .line 407
    const-string/jumbo v0, "startShortcut: can not get service impl "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 410
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getDefaultLauncherPackage()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "queryTargetPackage":Ljava/lang/String;
    if-nez v0, :cond_24

    .line 412
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string/jumbo v3, "getShortcuts: can not launcher name "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_25

    .line 411
    :cond_24
    move-object v2, v0

    .line 416
    .end local v0    # "queryTargetPackage":Ljava/lang/String;
    .local v2, "queryTargetPackage":Ljava/lang/String;
    :goto_25
    :try_start_25
    sget-object v4, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    iget-object v0, v1, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    .line 417
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v4 .. v11}, Lcom/samsung/android/app/ISemExecuteManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result v0

    .line 419
    .local v0, "success":Z
    if-eqz v0, :cond_3d

    .line 424
    .end local v0    # "success":Z
    nop

    .line 425
    return-void

    .line 420
    .restart local v0    # "success":Z
    :cond_3d
    new-instance v3, Landroid/content/ActivityNotFoundException;

    const-string v4, "Shortcut could not be started"

    invoke-direct {v3, v4}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v2    # "queryTargetPackage":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/app/SemExecutableManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "shortcutId":Ljava/lang/String;
    .end local p3    # "sourceBounds":Landroid/graphics/Rect;
    .end local p4    # "startActivityOptions":Landroid/os/Bundle;
    .end local p5    # "userId":I
    throw v3
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_45} :catch_45

    .line 422
    .end local v0    # "success":Z
    .restart local v2    # "queryTargetPackage":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/app/SemExecutableManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "shortcutId":Ljava/lang/String;
    .restart local p3    # "sourceBounds":Landroid/graphics/Rect;
    .restart local p4    # "startActivityOptions":Landroid/os/Bundle;
    .restart local p5    # "userId":I
    :catch_45
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 491
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-direct {p0, p3}, Lcom/samsung/android/app/SemExecutableManager;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getDefaultLauncherPackage()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "queryTargetPackage":Ljava/lang/String;
    if-nez v0, :cond_23

    .line 496
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 497
    const-string v1, "SemExecutableManager"

    const-string/jumbo v2, "getShortcuts: can not launcher name "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_23
    :try_start_23
    sget-object v1, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    .line 501
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/samsung/android/app/ISemExecuteManager;->getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 502
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_32

    .line 506
    return-object v1

    .line 503
    :cond_32
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 504
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "queryTargetPackage":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/app/SemExecutableManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v2
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_59} :catch_59

    .line 507
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "queryTargetPackage":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/app/SemExecutableManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "flags":I
    .restart local p3    # "user":Landroid/os/UserHandle;
    :catch_59
    move-exception v1

    .line 508
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;
    .registers 7
    .param p1, "id"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getService()Lcom/samsung/android/app/ISemExecuteManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SemExecutableManager"

    if-nez v0, :cond_10

    .line 115
    const-string/jumbo v0, "getExecutableInfo: can not get service impl "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v1

    .line 119
    :cond_10
    :try_start_10
    sget-object v0, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/ISemExecuteManager;->getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    .line 120
    :catch_17
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExecutableInfo() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-object v1
.end method

.method public getExecutableInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getService()Lcom/samsung/android/app/ISemExecuteManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SemExecutableManager"

    if-nez v0, :cond_10

    .line 134
    const-string/jumbo v0, "getExecutableInfos: can not get service impl "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object v1

    .line 138
    :cond_10
    :try_start_10
    sget-object v0, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    invoke-interface {v0}, Lcom/samsung/android/app/ISemExecuteManager;->getExecutableInfos()Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    .line 139
    :catch_17
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExecutableInfo() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v1
.end method

.method public getShortcutBadgedIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "density"    # I

    .line 348
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/SemExecutableManager;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 350
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_16

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 351
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 350
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_16
    return-object v1
.end method

.method public getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "density"    # I

    .line 286
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 287
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/SemExecutableManager;->getShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 288
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_e

    .line 289
    return-object v1

    .line 292
    :cond_e
    :try_start_e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 293
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3b

    .line 294
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 295
    .local v3, "dr":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 296
    new-instance v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v4, v1, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_42

    .line 304
    :try_start_2e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 306
    goto :goto_33

    .line 305
    :catch_32
    move-exception v1

    .line 296
    :goto_33
    return-object v4

    .line 298
    :cond_34
    nop

    .line 304
    :try_start_35
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 306
    goto :goto_3a

    .line 305
    :catch_39
    move-exception v1

    .line 298
    :goto_3a
    return-object v3

    .line 301
    .end local v3    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3b
    nop

    .line 304
    :try_start_3c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 306
    goto :goto_41

    .line 305
    :catch_40
    move-exception v3

    .line 301
    :goto_41
    return-object v1

    .line 303
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :catchall_42
    move-exception v1

    .line 304
    :try_start_43
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 306
    goto :goto_48

    .line 305
    :catch_47
    move-exception v2

    .line 307
    :goto_48
    throw v1

    .line 308
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_49
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 309
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 309
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/samsung/android/app/SemExecutableManager;->loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 311
    :cond_60
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 313
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 314
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_8c

    .line 324
    :pswitch_71
    return-object v1

    .line 316
    :pswitch_72
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 316
    invoke-direct {p0, v1, v2, v3, p2}, Lcom/samsung/android/app/SemExecutableManager;->loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 321
    :pswitch_83
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 327
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_8a
    return-object v1

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_83
        :pswitch_72
        :pswitch_71
        :pswitch_71
        :pswitch_83
    .end packed-switch
.end method

.method public getShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 454
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getService()Lcom/samsung/android/app/ISemExecuteManager;

    move-result-object v0

    if-nez v0, :cond_10

    .line 455
    const-string v0, "SemExecutableManager"

    const-string/jumbo v1, "getShortcutIconFd: can not get service impl "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_10
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    .line 458
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/SemExecutableManager;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getShortcuts(Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 14
    .param p1, "query"    # Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p2}, Lcom/samsung/android/app/SemExecutableManager;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getShortcuts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_24
    const-string/jumbo v1, "null"

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemExecutableManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getService()Lcom/samsung/android/app/ISemExecuteManager;

    move-result-object v0

    if-nez v0, :cond_46

    .line 205
    const-string/jumbo v0, "getShortcuts: can not get service impl "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_46
    :try_start_46
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getDefaultLauncherPackage()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "queryTargetPackage":Ljava/lang/String;
    if-nez v0, :cond_59

    .line 211
    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 212
    const-string/jumbo v2, "getShortcuts: can not launcher name "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_59
    sget-object v1, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mChangedSince:J

    iget-object v6, p1, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mPackage:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    iget-object v8, p1, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    iget v9, p1, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mQueryFlags:I

    move-object v3, v0

    move-object v10, p2

    invoke-interface/range {v1 .. v10}, Lcom/samsung/android/app/ISemExecuteManager;->getShortcuts(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_75} :catch_76

    .line 214
    return-object v1

    .line 218
    .end local v0    # "queryTargetPackage":Ljava/lang/String;
    :catch_76
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getShortcuts(Ljava/lang/String;Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 15
    .param p1, "queryTargetLauncherPackage"    # Ljava/lang/String;
    .param p2, "query"    # Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-direct {p0, p3}, Lcom/samsung/android/app/SemExecutableManager;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getShortcuts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_24
    const-string/jumbo v1, "null"

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemExecutableManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getService()Lcom/samsung/android/app/ISemExecuteManager;

    move-result-object v0

    if-nez v0, :cond_46

    .line 244
    const-string/jumbo v0, "getShortcuts: can not get service impl "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_46
    :try_start_46
    sget-object v1, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p2, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mChangedSince:J

    iget-object v6, p2, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mPackage:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    iget-object v8, p2, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    iget v9, p2, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mQueryFlags:I

    move-object v3, p1

    move-object v10, p3

    invoke-interface/range {v1 .. v10}, Lcom/samsung/android/app/ISemExecuteManager;->getShortcuts(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_62} :catch_63

    .line 248
    return-object v0

    .line 252
    :catch_63
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasShortcutHostPermission()Z
    .registers 3

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getService()Lcom/samsung/android/app/ISemExecuteManager;

    move-result-object v0

    if-nez v0, :cond_10

    .line 173
    const-string v0, "SemExecutableManager"

    const-string/jumbo v1, "hasShortcutHostPermission: can not get service impl "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_10
    :try_start_10
    sget-object v0, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/ISemExecuteManager;->hasShortcutHostPermission(Ljava/lang/String;)Z

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    return v0

    .line 178
    :catch_1d
    move-exception v0

    .line 179
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerShortcutChangedCallback(Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "pIntent"    # Landroid/app/PendingIntent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 515
    const-string/jumbo v0, "pIntent"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-direct {p0, p2}, Lcom/samsung/android/app/SemExecutableManager;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 519
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getService()Lcom/samsung/android/app/ISemExecuteManager;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 520
    const-string v0, "SemExecutableManager"

    const-string/jumbo v1, "registerChangedCallback: can not get service impl "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void

    .line 524
    :cond_1e
    :try_start_1e
    sget-object v0, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/app/ISemExecuteManager;->registerChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2b

    .line 527
    nop

    .line 528
    return-void

    .line 525
    :catch_2b
    move-exception v0

    .line 526
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "startActivityOptions"    # Landroid/os/Bundle;

    .line 398
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    .line 398
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemExecutableManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V

    .line 401
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "startActivityOptions"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 374
    invoke-direct {p0, p5}, Lcom/samsung/android/app/SemExecutableManager;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 376
    nop

    .line 377
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemExecutableManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V

    .line 378
    return-void
.end method

.method public unRegisterShortcutChangedCallback(Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "pIntent"    # Landroid/app/PendingIntent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 534
    const-string/jumbo v0, "pIntent"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-direct {p0, p2}, Lcom/samsung/android/app/SemExecutableManager;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 537
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableManager;->getService()Lcom/samsung/android/app/ISemExecuteManager;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 538
    const-string v0, "SemExecutableManager"

    const-string/jumbo v1, "unRegisterChangedCallback: can not get service impl "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void

    .line 542
    :cond_1e
    :try_start_1e
    sget-object v0, Lcom/samsung/android/app/SemExecutableManager;->mService:Lcom/samsung/android/app/ISemExecuteManager;

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/app/ISemExecuteManager;->unRegisterChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2b

    .line 545
    nop

    .line 546
    return-void

    .line 543
    :catch_2b
    move-exception v0

    .line 544
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
