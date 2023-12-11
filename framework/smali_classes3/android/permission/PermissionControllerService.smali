.class public abstract Landroid/permission/PermissionControllerService;
.super Landroid/app/Service;
.source "PermissionControllerService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final CAMERA_MIC_INDICATORS_NOT_PRESENT:J = 0x9b0491fL

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.permission.PermissionControllerService"


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/permission/PermissionControllerService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 82
    const-class v0, Landroid/permission/PermissionControllerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionControllerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/permission/PermissionControllerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Landroid/permission/PermissionControllerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Landroid/permission/PermissionControllerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPrivilegesDescriptionStringForProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "deviceProfileName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 366
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onApplyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/permission/PermissionControllerService;->onRestoreDelayedRuntimePermissionsBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 174
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 401
    new-instance v0, Landroid/permission/PermissionControllerService$1;

    invoke-direct {v0, p0}, Landroid/permission/PermissionControllerService$1;-><init>(Landroid/permission/PermissionControllerService;)V

    return-object v0
.end method

.method public abstract onCountPermissionApps(Ljava/util/List;ILjava/util/function/IntConsumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/function/IntConsumer;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetAppPermissions(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/permission/RuntimePermissionPresentationInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onGetGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 328
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGetHibernationEligibility(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/util/function/IntConsumer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 396
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onGetPermissionUsages(ZJLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/permission/RuntimePermissionUsageInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onGetPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "permissionGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 316
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onGetRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/OutputStream;Ljava/lang/Runnable;)V
.end method

.method public onGetUnusedAppCount(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "callback"    # Ljava/util/function/IntConsumer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 380
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onGrantOrUpgradeDefaultRuntimePermissions(Ljava/lang/Runnable;)V
.end method

.method public onOneTimePermissionSessionTimeout(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 304
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRestoreDelayedRuntimePermissionsBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onRestoreRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/InputStream;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "backup"    # Ljava/io/InputStream;
    .param p3, "callback"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    return-void
.end method

.method public abstract onRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract onRevokeRuntimePermissions(Ljava/util/Map;ZILjava/lang/String;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;ZI",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public onRevokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 350
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSetRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/permission/AdminPermissionControlParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/permission/AdminPermissionControlParams;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 292
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onSetRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onStageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/InputStream;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "backup"    # Ljava/io/InputStream;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Landroid/permission/PermissionControllerService;->onRestoreRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/InputStream;Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public onUpdateUserSensitivePermissionFlags(ILjava/lang/Runnable;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 260
    invoke-virtual {p0}, Landroid/permission/PermissionControllerService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/permission/PermissionControllerService;->onUpdateUserSensitivePermissionFlags(ILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public onUpdateUserSensitivePermissionFlags(ILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 251
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
