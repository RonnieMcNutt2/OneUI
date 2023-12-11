.class public Landroid/app/servertransaction/PendingTransactionActions;
.super Ljava/lang/Object;
.source "PendingTransactionActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    }
.end annotation


# instance fields
.field private mCallOnPostCreate:Z

.field private mOldState:Landroid/os/Bundle;

.field private mRestoreInstanceState:Z

.field private mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Landroid/app/servertransaction/PendingTransactionActions;->clear()V

    .line 50
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mRestoreInstanceState:Z

    .line 55
    iput-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mCallOnPostCreate:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mOldState:Landroid/os/Bundle;

    .line 57
    iput-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    .line 58
    return-void
.end method

.method public getOldState()Landroid/os/Bundle;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mOldState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStopInfo()Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    return-object v0
.end method

.method public setCallOnPostCreate(Z)V
    .registers 2
    .param p1, "callOnPostCreate"    # Z

    .line 75
    iput-boolean p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mCallOnPostCreate:Z

    .line 76
    return-void
.end method

.method public setOldState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "oldState"    # Landroid/os/Bundle;

    .line 83
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mOldState:Landroid/os/Bundle;

    .line 84
    return-void
.end method

.method public setRestoreInstanceState(Z)V
    .registers 2
    .param p1, "restoreInstanceState"    # Z

    .line 66
    iput-boolean p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mRestoreInstanceState:Z

    .line 67
    return-void
.end method

.method public setStopInfo(Landroid/app/servertransaction/PendingTransactionActions$StopInfo;)V
    .registers 2
    .param p1, "stopInfo"    # Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    .line 91
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    .line 92
    return-void
.end method

.method public shouldCallOnPostCreate()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mCallOnPostCreate:Z

    return v0
.end method

.method public shouldRestoreInstanceState()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mRestoreInstanceState:Z

    return v0
.end method
