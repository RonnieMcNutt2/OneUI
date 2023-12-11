.class public abstract Landroid/app/ClientTransactionHandler;
.super Ljava/lang/Object;
.source "ClientTransactionHandler.java"


# instance fields
.field private mIsExecutingLocalTransaction:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract countLaunchingActivities(I)V
.end method

.method public executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 4
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ClientTransactionHandler;->mIsExecutingLocalTransaction:Z

    .line 67
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p1, p0}, Landroid/app/servertransaction/ClientTransaction;->preExecute(Landroid/app/ClientTransactionHandler;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/ClientTransactionHandler;->getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/servertransaction/TransactionExecutor;->execute(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_15

    .line 70
    iput-boolean v0, p0, Landroid/app/ClientTransactionHandler;->mIsExecutingLocalTransaction:Z

    .line 71
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    .line 72
    nop

    .line 73
    return-void

    .line 70
    :catchall_15
    move-exception v1

    iput-boolean v0, p0, Landroid/app/ClientTransactionHandler;->mIsExecutingLocalTransaction:Z

    .line 71
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    .line 72
    throw v1
.end method

.method public abstract getActivitiesToBeDestroyed()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
.end method

.method public abstract getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
.end method

.method public abstract getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;
.end method

.method abstract getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
.end method

.method public abstract handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)V
.end method

.method public abstract handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
.end method

.method public abstract handleConfigurationChanged(Landroid/content/res/Configuration;I)V
.end method

.method public abstract handleCoreStatesChanged(Landroid/os/Bundle;)V
.end method

.method public abstract handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V
.end method

.method public abstract handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;
.end method

.method public abstract handleNewIntent(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZIZLandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
.end method

.method public abstract handlePictureInPictureRequested(Landroid/app/ActivityThread$ActivityClientRecord;)V
.end method

.method public abstract handlePictureInPictureStateChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/PictureInPictureUiState;)V
.end method

.method public abstract handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public abstract handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLjava/lang/String;)V
.end method

.method public abstract handleSendResult(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions;)V
.end method

.method public abstract handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
.end method

.method public abstract handleTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
.end method

.method public isExecutingLocalTransaction()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Landroid/app/ClientTransactionHandler;->mIsExecutingLocalTransaction:Z

    return v0
.end method

.method public abstract isHandleSplashScreenExit(Landroid/os/IBinder;)Z
.end method

.method public abstract performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
.end method

.method public abstract prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z)",
            "Landroid/app/ActivityThread$ActivityClientRecord;"
        }
    .end annotation
.end method

.method public abstract reportRefresh(Landroid/app/ActivityThread$ActivityClientRecord;)V
.end method

.method public abstract reportRelaunch(Landroid/app/ActivityThread$ActivityClientRecord;)V
.end method

.method public abstract reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 3
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 55
    invoke-virtual {p1, p0}, Landroid/app/servertransaction/ClientTransaction;->preExecute(Landroid/app/ClientTransactionHandler;)V

    .line 56
    const/16 v0, 0x9f

    invoke-virtual {p0, v0, p1}, Landroid/app/ClientTransactionHandler;->sendMessage(ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method abstract sendMessage(ILjava/lang/Object;)V
.end method

.method public abstract updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
.end method

.method public abstract updatePendingConfiguration(Landroid/content/res/Configuration;)V
.end method

.method public abstract updateProcessState(IZ)V
.end method
