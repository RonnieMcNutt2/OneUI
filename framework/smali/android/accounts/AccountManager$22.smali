.class Landroid/accounts/AccountManager$22;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->startUpdateCredentialsSession(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$optionsIn:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 3253
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$22;->this$0:Landroid/accounts/AccountManager;

    iput-object p5, p0, Landroid/accounts/AccountManager$22;->val$account:Landroid/accounts/Account;

    iput-object p6, p0, Landroid/accounts/AccountManager$22;->val$authTokenType:Ljava/lang/String;

    iput-object p7, p0, Landroid/accounts/AccountManager$22;->val$activity:Landroid/app/Activity;

    iput-object p8, p0, Landroid/accounts/AccountManager$22;->val$optionsIn:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3256
    iget-object v0, p0, Landroid/accounts/AccountManager$22;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$22;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v3, p0, Landroid/accounts/AccountManager$22;->val$account:Landroid/accounts/Account;

    iget-object v4, p0, Landroid/accounts/AccountManager$22;->val$authTokenType:Ljava/lang/String;

    iget-object v0, p0, Landroid/accounts/AccountManager$22;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    move v5, v0

    iget-object v6, p0, Landroid/accounts/AccountManager$22;->val$optionsIn:Landroid/os/Bundle;

    invoke-interface/range {v1 .. v6}, Landroid/accounts/IAccountManager;->startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 3262
    return-void
.end method
