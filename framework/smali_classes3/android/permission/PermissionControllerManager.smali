.class public final Landroid/permission/PermissionControllerManager;
.super Ljava/lang/Object;
.source "PermissionControllerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;,
        Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;,
        Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;,
        Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;,
        Landroid/permission/PermissionControllerManager$HibernationEligibilityFlag;,
        Landroid/permission/PermissionControllerManager$CountPermissionAppsFlag;,
        Landroid/permission/PermissionControllerManager$Reason;
    }
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x1000

.field public static final COUNT_ONLY_WHEN_GRANTED:I = 0x1

.field public static final COUNT_WHEN_SYSTEM:I = 0x2

.field public static final HIBERNATION_ELIGIBILITY_ELIGIBLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HIBERNATION_ELIGIBILITY_EXEMPT_BY_SYSTEM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HIBERNATION_ELIGIBILITY_EXEMPT_BY_USER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HIBERNATION_ELIGIBILITY_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REASON_INSTALLER_POLICY_VIOLATION:I = 0x2

.field public static final REASON_MALWARE:I = 0x1

.field private static final REQUEST_TIMEOUT_MILLIS:J = 0xea60L

.field private static final TAG:Ljava/lang/String;

.field private static final UNBIND_TIMEOUT_MILLIS:J = 0x2710L

.field private static final sLock:Ljava/lang/Object;

.field private static sRemoteServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Thread;",
            ">;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/permission/IPermissionController;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mRemoteService:Lcom/android/internal/infra/ServiceConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/permission/IPermissionController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$e67Y5CA6eXGCRQ_bdy7i1EH97ag(Landroid/permission/PermissionControllerManager;Ljava/util/Map;ZILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/permission/PermissionControllerManager;->lambda$revokeRuntimePermissions$0(Ljava/util/Map;ZILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 84
    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/permission/PermissionControllerManager;->sLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 249
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    sget-object v10, Landroid/permission/PermissionControllerManager;->sLock:Ljava/lang/Object;

    monitor-enter v10

    .line 251
    :try_start_8
    new-instance v0, Landroid/util/Pair;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Thread;>;"
    sget-object v1, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector;

    move-object v11, v1

    .line 254
    .local v11, "remoteService":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/permission/IPermissionController;>;"
    if-nez v11, :cond_a6

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.permission.PermissionControllerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v1

    .line 256
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 257
    .local v13, "pkgName":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object v14, v1

    .line 259
    .local v14, "serviceInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7a

    .line 265
    new-instance v15, Landroid/permission/PermissionControllerManager$1;

    .line 266
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.permission.PermissionControllerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v6

    new-instance v7, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda38;

    invoke-direct {v7}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda38;-><init>()V

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/permission/PermissionControllerManager$1;-><init>(Landroid/permission/PermissionControllerManager;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V

    move-object v11, v15

    .line 287
    sget-object v1, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 260
    :cond_7a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No PermissionController package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "errorMsg":Ljava/lang/String;
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/permission/PermissionControllerManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 290
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "serviceInfo":Landroid/content/pm/ResolveInfo;
    .restart local p0    # "this":Landroid/permission/PermissionControllerManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_a6
    :goto_a6
    iput-object v11, v9, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    .line 291
    .end local v0    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Thread;>;"
    .end local v11    # "remoteService":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/permission/IPermissionController;>;"
    monitor-exit v10
    :try_end_a9
    .catchall {:try_start_8 .. :try_end_a9} :catchall_b2

    .line 293
    move-object/from16 v1, p1

    iput-object v1, v9, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    .line 294
    move-object/from16 v2, p2

    iput-object v2, v9, Landroid/permission/PermissionControllerManager;->mHandler:Landroid/os/Handler;

    .line 295
    return-void

    .line 291
    :catchall_b2
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_b7
    :try_start_b7
    monitor-exit v10
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b9

    throw v0

    :catchall_b9
    move-exception v0

    goto :goto_b7
.end method

.method private varargs enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V
    .registers 6
    .param p1, "requiredPermissions"    # [Ljava/lang/String;

    .line 304
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    .line 305
    .local v2, "requiredPermission":Ljava/lang/String;
    iget-object v3, p0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    .line 307
    return-void

    .line 304
    .end local v2    # "requiredPermission":Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 311
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At lest one of the following permissions is required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$applyStagedRuntimePermissionBackup$10(Ljava/lang/String;Landroid/os/UserHandle;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 514
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 516
    .local v0, "applyStagedRuntimePermissionBackupResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V

    .line 518
    return-object v0
.end method

.method static synthetic lambda$applyStagedRuntimePermissionBackup$11(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "applyStagedRuntimePermissionBackupResult"    # Ljava/lang/Boolean;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 522
    .local v0, "token":J
    if-eqz p3, :cond_27

    .line 523
    :try_start_6
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error restoring delayed permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_34

    .line 526
    :cond_27
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 527
    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 526
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_39

    .line 530
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 531
    nop

    .line 532
    return-void

    .line 530
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 531
    throw v2
.end method

.method static synthetic lambda$countPermissionApps$18(Ljava/util/List;ILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "permissionNames"    # Ljava/util/List;
    .param p1, "flags"    # I
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 624
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 625
    .local v0, "countPermissionAppsResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->countPermissionApps(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V

    .line 626
    return-object v0
.end method

.method static synthetic lambda$countPermissionApps$19(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;)V
    .registers 5
    .param p0, "err"    # Ljava/lang/Throwable;
    .param p1, "callback"    # Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;
    .param p2, "countPermissionAppsResult"    # Ljava/lang/Integer;

    .line 628
    if-eqz p0, :cond_e

    .line 629
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error counting permission apps"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;->onCountPermissionApps(I)V

    goto :goto_15

    .line 632
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;->onCountPermissionApps(I)V

    .line 634
    :goto_15
    return-void
.end method

.method static synthetic lambda$countPermissionApps$20(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "finalHandler"    # Landroid/os/Handler;
    .param p1, "callback"    # Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;
    .param p2, "countPermissionAppsResult"    # Ljava/lang/Integer;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 627
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p3, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$dump$12(Landroid/permission/IPermissionController;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .param p0, "service"    # Landroid/permission/IPermissionController;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 544
    invoke-interface {p0}, Landroid/permission/IPermissionController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method static synthetic lambda$dump$13(Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p2, p0, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;-><init>(Landroid/permission/IPermissionController;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 545
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 543
    invoke-static {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAppPermissions$14(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 570
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 572
    .local v0, "getAppPermissionsResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/permission/RuntimePermissionPresentationInfo;>;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getAppPermissions(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 573
    return-object v0
.end method

.method static synthetic lambda$getAppPermissions$15(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;)V
    .registers 5
    .param p0, "err"    # Ljava/lang/Throwable;
    .param p1, "callback"    # Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;
    .param p2, "getAppPermissionsResult"    # Ljava/util/List;

    .line 575
    if-eqz p0, :cond_11

    .line 576
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting app permission"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    goto :goto_18

    .line 579
    :cond_11
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    .line 581
    :goto_18
    return-void
.end method

.method static synthetic lambda$getAppPermissions$16(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "finalHandler"    # Landroid/os/Handler;
    .param p1, "callback"    # Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;
    .param p2, "getAppPermissionsResult"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 574
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;

    invoke-direct {v0, p3, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;-><init>(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$getGroupOfPlatformPermission$32(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 823
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 824
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getGroupOfPlatformPermission(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 825
    return-object v0
.end method

.method static synthetic lambda$getGroupOfPlatformPermission$33(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 827
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 829
    .local v0, "token":J
    if-eqz p3, :cond_23

    .line 830
    :try_start_6
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get group of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_26

    .line 833
    :cond_23
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_2b

    .line 836
    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 837
    nop

    .line 838
    return-void

    .line 836
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 837
    throw v2
.end method

.method static synthetic lambda$getHibernationEligibility$36(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 886
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 887
    .local v0, "eligibilityResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getHibernationEligibility(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 888
    return-object v0
.end method

.method static synthetic lambda$getHibernationEligibility$37(Ljava/util/function/IntConsumer;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "callback"    # Ljava/util/function/IntConsumer;
    .param p1, "eligibility"    # Ljava/lang/Integer;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 890
    if-eqz p2, :cond_e

    .line 891
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting hibernation eligibility"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_1d

    .line 894
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 896
    .local v0, "token":J
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    .line 898
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 899
    nop

    .line 901
    .end local v0    # "token":J
    :goto_1d
    return-void

    .line 898
    .restart local v0    # "token":J
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 899
    throw v2
.end method

.method static synthetic lambda$getPermissionUsages$21(ZJLandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p0, "countSystem"    # Z
    .param p1, "numMillis"    # J
    .param p3, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 657
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 659
    .local v0, "getPermissionUsagesResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/permission/RuntimePermissionUsageInfo;>;>;"
    invoke-interface {p3, p0, p1, p2, v0}, Landroid/permission/IPermissionController;->getPermissionUsages(ZJLcom/android/internal/infra/AndroidFuture;)V

    .line 660
    return-object v0
.end method

.method static synthetic lambda$getPermissionUsages$22(Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;Ljava/util/List;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "callback"    # Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;
    .param p1, "getPermissionUsagesResult"    # Ljava/util/List;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 662
    if-eqz p2, :cond_11

    .line 663
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting permission usages"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;->onPermissionUsageResult(Ljava/util/List;)V

    goto :goto_21

    .line 666
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 668
    .local v0, "token":J
    nop

    .line 669
    :try_start_16
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 668
    invoke-interface {p0, v2}, Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;->onPermissionUsageResult(Ljava/util/List;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_22

    .line 671
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    nop

    .line 674
    .end local v0    # "token":J
    :goto_21
    return-void

    .line 671
    .restart local v0    # "token":J
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    throw v2
.end method

.method static synthetic lambda$getPlatformPermissionsForGroup$30(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "permissionGroupName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 790
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 791
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getPlatformPermissionsForGroup(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 792
    return-object v0
.end method

.method static synthetic lambda$getPlatformPermissionsForGroup$31(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/List;Ljava/lang/Throwable;)V
    .registers 9
    .param p0, "permissionGroupName"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 796
    .local v0, "token":J
    if-eqz p3, :cond_27

    .line 797
    :try_start_6
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get permissions of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2a

    .line 800
    :cond_27
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2f

    .line 803
    :goto_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 804
    nop

    .line 805
    return-void

    .line 803
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 804
    throw v2
.end method

.method static synthetic lambda$getPrivilegesDescriptionStringForProfile$25(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "profileName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 724
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 725
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 726
    return-object v0
.end method

.method static synthetic lambda$getPrivilegesDescriptionStringForProfile$26(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 728
    if-eqz p2, :cond_e

    .line 729
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error from getPrivilegesDescriptionStringForProfile"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_11

    .line 732
    :cond_e
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 734
    :goto_11
    return-void
.end method

.method static synthetic lambda$getRuntimePermissionBackup$4(Landroid/permission/IPermissionController;Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p0, "service"    # Landroid/permission/IPermissionController;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "remotePipe"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 438
    invoke-interface {p0, p1, p2}, Landroid/permission/IPermissionController;->getRuntimePermissionBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    .line 439
    return-void
.end method

.method static synthetic lambda$getRuntimePermissionBackup$5(Landroid/os/UserHandle;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 437
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda2;-><init>(Landroid/permission/IPermissionController;Landroid/os/UserHandle;)V

    invoke-static {v0}, Lcom/android/internal/infra/RemoteStream;->receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRuntimePermissionBackup$6(Ljava/util/function/Consumer;[BLjava/lang/Throwable;)V
    .registers 5
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "bytes"    # [B
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 440
    if-eqz p2, :cond_f

    .line 441
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting permission backup"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_12

    .line 444
    :cond_f
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 446
    :goto_12
    return-void
.end method

.method static synthetic lambda$getUnusedAppCount$34(Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .param p0, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 853
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 854
    .local v0, "unusedAppCountResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    invoke-interface {p0, v0}, Landroid/permission/IPermissionController;->getUnusedAppCount(Lcom/android/internal/infra/AndroidFuture;)V

    .line 855
    return-object v0
.end method

.method static synthetic lambda$getUnusedAppCount$35(Ljava/util/function/IntConsumer;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "callback"    # Ljava/util/function/IntConsumer;
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 857
    if-eqz p2, :cond_e

    .line 858
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting unused app count"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_1d

    .line 861
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 863
    .local v0, "token":J
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    .line 865
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 866
    nop

    .line 868
    .end local v0    # "token":J
    :goto_1d
    return-void

    .line 865
    .restart local v0    # "token":J
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 866
    throw v2
.end method

.method static synthetic lambda$grantOrUpgradeDefaultRuntimePermissions$23(Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 691
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 694
    .local v0, "grantOrUpgradeDefaultRuntimePermissionsResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    sget-object v1, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v2, "Calling grantOrUpgradeDefaultRuntimePermissions"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-interface {p0, v0}, Landroid/permission/IPermissionController;->grantOrUpgradeDefaultRuntimePermissions(Lcom/android/internal/infra/AndroidFuture;)V

    .line 698
    return-object v0
.end method

.method static synthetic lambda$grantOrUpgradeDefaultRuntimePermissions$24(Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "grantOrUpgradeDefaultRuntimePermissionsResult"    # Ljava/lang/Boolean;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 700
    if-eqz p2, :cond_12

    .line 701
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error granting or upgrading runtime permissions"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1f

    .line 704
    :cond_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 706
    :goto_1f
    return-void
.end method

.method static synthetic lambda$notifyOneTimePermissionSessionTimeout$29(Ljava/lang/String;Landroid/permission/IPermissionController;)V
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 772
    invoke-interface {p1, p0}, Landroid/permission/IPermissionController;->notifyOneTimePermissionSessionTimeout(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$revokeRuntimePermission$17(Ljava/lang/String;Ljava/lang/String;Landroid/permission/IPermissionController;)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 599
    invoke-interface {p2, p0, p1}, Landroid/permission/IPermissionController;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$revokeRuntimePermissions$0(Ljava/util/Map;ZILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "request"    # Ljava/util/Map;
    .param p2, "doDryRun"    # Z
    .param p3, "reason"    # I
    .param p4, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v0, "bundledizedRequest":Landroid/os/Bundle;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 343
    .local v2, "appRequest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    .line 344
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 345
    .end local v2    # "appRequest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_d

    .line 347
    :cond_2e
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object v7, v1

    .line 349
    .local v7, "revokeRuntimePermissionsResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    iget-object v1, p0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    .line 350
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 349
    move-object v1, p4

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Landroid/permission/IPermissionController;->revokeRuntimePermissions(Landroid/os/Bundle;ZILjava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 352
    return-object v7
.end method

.method static synthetic lambda$revokeRuntimePermissions$1(Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;Ljava/util/Map;Ljava/lang/Throwable;)V
    .registers 8
    .param p0, "callback"    # Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;
    .param p1, "revoked"    # Ljava/util/Map;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 356
    .local v0, "token":J
    if-eqz p2, :cond_26

    .line 357
    :try_start_6
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure when revoking runtime permissions "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;->onRevokeRuntimePermissions(Ljava/util/Map;)V

    goto :goto_29

    .line 360
    :cond_26
    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;->onRevokeRuntimePermissions(Ljava/util/Map;)V
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2e

    .line 363
    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    nop

    .line 365
    return-void

    .line 363
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    throw v2
.end method

.method static synthetic lambda$revokeSelfPermissionsOnKill$38(Ljava/lang/String;Ljava/util/List;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissions"    # Ljava/util/List;
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 931
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 932
    .local v0, "callback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V

    .line 933
    return-object v0
.end method

.method static synthetic lambda$revokeSelfPermissionsOnKill$39(Ljava/util/List;Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "permissions"    # Ljava/util/List;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Void;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 935
    if-eqz p3, :cond_2a

    .line 936
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to self revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    :cond_2a
    return-void
.end method

.method static synthetic lambda$setRuntimePermissionGrantStateByDeviceAdmin$2(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "callerPackageName"    # Ljava/lang/String;
    .param p1, "params"    # Landroid/permission/AdminPermissionControlParams;
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 394
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 395
    .local v0, "setRuntimePermissionGrantStateResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->setRuntimePermissionGrantStateByDeviceAdminFromParams(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Lcom/android/internal/infra/AndroidFuture;)V

    .line 398
    return-object v0
.end method

.method static synthetic lambda$setRuntimePermissionGrantStateByDeviceAdmin$3(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 9
    .param p0, "callerPackageName"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "setRuntimePermissionGrantStateResult"    # Ljava/lang/Boolean;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 402
    .local v0, "token":J
    if-eqz p3, :cond_27

    .line 403
    :try_start_6
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting permissions state for device admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_34

    .line 408
    :cond_27
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_39

    .line 411
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    nop

    .line 413
    return-void

    .line 411
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    throw v2
.end method

.method static synthetic lambda$stageAndApplyRuntimePermissionsBackup$7(Landroid/permission/IPermissionController;Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p0, "service"    # Landroid/permission/IPermissionController;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "remotePipe"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    invoke-interface {p0, p1, p2}, Landroid/permission/IPermissionController;->stageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    .line 476
    return-void
.end method

.method static synthetic lambda$stageAndApplyRuntimePermissionsBackup$8(Landroid/os/UserHandle;[BLandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "backup"    # [B
    .param p2, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 474
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p0}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;-><init>(Landroid/permission/IPermissionController;Landroid/os/UserHandle;)V

    invoke-static {v0, p1}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;[B)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$stageAndApplyRuntimePermissionsBackup$9(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "nullResult"    # Ljava/lang/Void;
    .param p1, "err"    # Ljava/lang/Throwable;

    .line 478
    if-eqz p1, :cond_9

    .line 479
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "Error sending permission backup"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    :cond_9
    return-void
.end method

.method static synthetic lambda$updateUserSensitiveForApp$27(ILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "uid"    # I
    .param p1, "service"    # Landroid/permission/IPermissionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 751
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 752
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->updateUserSensitiveForApp(ILcom/android/internal/infra/AndroidFuture;)V

    .line 753
    return-object v0
.end method

.method static synthetic lambda$updateUserSensitiveForApp$28(ILjava/lang/Void;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "uid"    # I
    .param p1, "res"    # Ljava/lang/Void;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 755
    if-eqz p2, :cond_1a

    .line 756
    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error updating user_sensitive flags for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    :cond_1a
    return-void
.end method


# virtual methods
.method public applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 504
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v1, "android.permission.RESTORE_RUNTIME_PERMISSIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda32;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda32;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1, p4}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda33;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 519
    invoke-virtual {v0, v1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 533
    return-void
.end method

.method public countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V
    .registers 8
    .param p2, "flags"    # I
    .param p3, "callback"    # Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 618
    .local p1, "permissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "permissionNames"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 619
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 620
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    if-eqz p4, :cond_11

    move-object v0, p4

    goto :goto_13

    :cond_11
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mHandler:Landroid/os/Handler;

    .line 623
    .local v0, "finalHandler":Landroid/os/Handler;
    :goto_13
    iget-object v1, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;I)V

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    new-instance v2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda13;-><init>(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;)V

    .line 627
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 635
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 542
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;-><init>(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 546
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 549
    goto :goto_1c

    .line 547
    :catch_14
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get dump"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method public getAppPermissions(Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 565
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    if-eqz p3, :cond_a

    move-object v0, p3

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mHandler:Landroid/os/Handler;

    .line 569
    .local v0, "finalHandler":Landroid/os/Handler;
    :goto_c
    iget-object v1, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    new-instance v2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;)V

    .line 574
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 582
    return-void
.end method

.method public getGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 822
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 826
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 839
    return-void
.end method

.method public getHibernationEligibility(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Ljava/util/function/IntConsumer;

    .line 882
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda17;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda17;-><init>(Ljava/util/function/IntConsumer;)V

    .line 889
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 902
    return-void
.end method

.method public getPermissionUsages(ZJLjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V
    .registers 8
    .param p1, "countSystem"    # Z
    .param p2, "numMillis"    # J
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

    .line 651
    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 652
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1, p2, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;-><init>(ZJ)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda26;

    invoke-direct {v1, p5}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda26;-><init>(Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V

    .line 661
    invoke-virtual {v0, v1, p4}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 675
    return-void
.end method

.method public getPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "permissionGroupName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 789
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 793
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 806
    return-void
.end method

.method public getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 723
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda19;-><init>(Ljava/util/function/Consumer;)V

    .line 727
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 735
    return-void
.end method

.method public getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "[B>;)V"
        }
    .end annotation

    .line 430
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[B>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda8;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda9;-><init>(Ljava/util/function/Consumer;)V

    .line 439
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 447
    return-void
.end method

.method public getUnusedAppCount(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Ljava/util/function/IntConsumer;

    .line 849
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda36;

    invoke-direct {v1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda36;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda37;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda37;-><init>(Ljava/util/function/IntConsumer;)V

    .line 856
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 869
    return-void
.end method

.method public grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 690
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;)V

    .line 699
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 707
    return-void
.end method

.method public notifyOneTimePermissionSessionTimeout(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 771
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 773
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 596
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda29;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda29;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 600
    return-void
.end method

.method public revokeRuntimePermissions(Ljava/util/Map;ZILjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V
    .registers 10
    .param p2, "doDryRun"    # Z
    .param p3, "reason"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;ZI",
            "Ljava/util/concurrent/Executor;",
            "Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;",
            ")V"
        }
    .end annotation

    .line 329
    .local p1, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 333
    .local v1, "appRequest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string/jumbo v3, "permissions"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 335
    .end local v1    # "appRequest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_11

    .line 338
    :cond_33
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda21;-><init>(Landroid/permission/PermissionControllerManager;Ljava/util/Map;ZI)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p5}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;-><init>(Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V

    .line 353
    invoke-virtual {v0, v1, p4}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 366
    return-void
.end method

.method public revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 930
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;

    invoke-direct {v1, p2, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 940
    return-void
.end method

.method public setRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/permission/AdminPermissionControlParams;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/permission/AdminPermissionControlParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 388
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 389
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v0, "Admin control params must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda30;-><init>(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda31;

    invoke-direct {v1, p1, p4}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda31;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 399
    invoke-virtual {v0, v1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 414
    return-void
.end method

.method public stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V
    .registers 5
    .param p1, "backup"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 467
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v1, "android.permission.RESTORE_RUNTIME_PERMISSIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda34;

    invoke-direct {v1, p2, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda34;-><init>(Landroid/os/UserHandle;[B)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda35;

    invoke-direct {v1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda35;-><init>()V

    .line 477
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 482
    return-void
.end method

.method public updateUserSensitive()V
    .registers 2

    .line 742
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/permission/PermissionControllerManager;->updateUserSensitiveForApp(I)V

    .line 743
    return-void
.end method

.method public updateUserSensitiveForApp(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 750
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda27;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda28;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda28;-><init>(I)V

    .line 754
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 759
    return-void
.end method
