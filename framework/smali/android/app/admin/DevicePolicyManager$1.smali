.class Landroid/app/admin/DevicePolicyManager$1;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/admin/DevicePolicyManager;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;


# direct methods
.method constructor <init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/admin/DevicePolicyManager;

    .line 15082
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$1;->this$0:Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/admin/DevicePolicyManager$1;->val$listener:Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onRemoveCompleted$0(Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "listener"    # Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .line 15085
    invoke-interface {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;->onApplicationUserDataCleared(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .line 15084
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$1;->val$listener:Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;

    new-instance v2, Landroid/app/admin/DevicePolicyManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Landroid/app/admin/DevicePolicyManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15086
    return-void
.end method
