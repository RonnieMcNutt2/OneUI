.class Landroid/content/pm/PackageInstaller$1;
.super Landroid/content/IIntentSender$Stub;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/PackageInstaller;->commitSessionAfterInstallConstraintsAreMet(ILandroid/content/IntentSender;Landroid/content/pm/PackageInstaller$InstallConstraints;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/PackageInstaller;

.field final synthetic val$session:Landroid/content/pm/IPackageInstallerSession;

.field final synthetic val$sessionId:I

.field final synthetic val$statusReceiver:Landroid/content/IntentSender;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageInstaller;Landroid/content/pm/IPackageInstallerSession;Landroid/content/IntentSender;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/content/pm/PackageInstaller;

    .line 1092
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$1;->this$0:Landroid/content/pm/PackageInstaller;

    iput-object p2, p0, Landroid/content/pm/PackageInstaller$1;->val$session:Landroid/content/pm/IPackageInstallerSession;

    iput-object p3, p0, Landroid/content/pm/PackageInstaller$1;->val$statusReceiver:Landroid/content/IntentSender;

    iput p4, p0, Landroid/content/pm/PackageInstaller$1;->val$sessionId:I

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "allowlistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 1097
    const-string v0, "android.content.pm.extra.INSTALL_CONSTRAINTS_RESULT"

    const-class v1, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    .line 1101
    .local v0, "result":Landroid/content/pm/PackageInstaller$InstallConstraintsResult;
    :try_start_a
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->areAllConstraintsSatisfied()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1102
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$1;->val$session:Landroid/content/pm/IPackageInstallerSession;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$1;->val$statusReceiver:Landroid/content/IntentSender;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    goto :goto_40

    .line 1105
    :cond_19
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1106
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v2, "android.content.pm.extra.SESSION_ID"

    iget v3, p0, Landroid/content/pm/PackageInstaller$1;->val$sessionId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1107
    const-string v2, "android.content.pm.extra.STATUS"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1108
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    const-string v3, "Install constraints not satisfied within timeout"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$1;->val$statusReceiver:Landroid/content/IntentSender;

    .line 1111
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1110
    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_40} :catch_41

    .line 1114
    .end local v1    # "fillIn":Landroid/content/Intent;
    :goto_40
    goto :goto_42

    .line 1113
    :catch_41
    move-exception v1

    .line 1115
    :goto_42
    return-void
.end method
