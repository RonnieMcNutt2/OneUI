.class Landroid/credentials/CredentialManager$CreateCredentialTransport;
.super Landroid/credentials/ICreateCredentialCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateCredentialTransport"
.end annotation


# instance fields
.field private final mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/CreateCredentialResponse;",
            "Landroid/credentials/CreateCredentialException;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$8NwBIrbcK6SvF9Mra_qL_8hhFMU(Landroid/credentials/CredentialManager$CreateCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$CreateCredentialTransport;->lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gm6b2wX1FoYjcAXIqta_tavhBfc(Landroid/credentials/CredentialManager$CreateCredentialTransport;)V
    .registers 1

    invoke-direct {p0}, Landroid/credentials/CredentialManager$CreateCredentialTransport;->lambda$onPendingIntent$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$nuRWMd1p084Au3APC_pt87_vZ_o(Landroid/credentials/CredentialManager$CreateCredentialTransport;Landroid/credentials/CreateCredentialResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/credentials/CredentialManager$CreateCredentialTransport;->lambda$onResponse$1(Landroid/credentials/CreateCredentialResponse;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/CreateCredentialResponse;",
            "Landroid/credentials/CreateCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 712
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/CreateCredentialResponse;Landroid/credentials/CreateCredentialException;>;"
    invoke-direct {p0}, Landroid/credentials/ICreateCredentialCallback$Stub;-><init>()V

    .line 713
    iput-object p1, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mContext:Landroid/content/Context;

    .line 714
    iput-object p2, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 715
    iput-object p3, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    .line 716
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$CreateCredentialTransport-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/credentials/CredentialManager$CreateCredentialTransport;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 752
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/CreateCredentialException;

    invoke-direct {v1, p1, p2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onPendingIntent$0()V
    .registers 4

    .line 729
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/CreateCredentialException;

    const-string v2, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    invoke-direct {v1, v2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onResponse$1(Landroid/credentials/CreateCredentialResponse;)V
    .registers 3
    .param p1, "response"    # Landroid/credentials/CreateCredentialResponse;

    .line 741
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 749
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 751
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;-><init>(Landroid/credentials/CredentialManager$CreateCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 754
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 755
    nop

    .line 756
    return-void

    .line 754
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 755
    throw v2
.end method

.method public onPendingIntent(Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 721
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_d} :catch_e

    .line 734
    goto :goto_3e

    .line 722
    :catch_e
    move-exception v0

    .line 723
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIntentSender() failed for intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 725
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    const-string v2, "CredentialManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 729
    .local v1, "identity":J
    :try_start_30
    iget-object v3, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda2;-><init>(Landroid/credentials/CredentialManager$CreateCredentialTransport;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3f

    .line 732
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    nop

    .line 735
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v1    # "identity":J
    :goto_3e
    return-void

    .line 732
    .restart local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    .restart local v1    # "identity":J
    :catchall_3f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    throw v3
.end method

.method public onResponse(Landroid/credentials/CreateCredentialResponse;)V
    .registers 6
    .param p1, "response"    # Landroid/credentials/CreateCredentialResponse;

    .line 739
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 741
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda1;-><init>(Landroid/credentials/CredentialManager$CreateCredentialTransport;Landroid/credentials/CreateCredentialResponse;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 743
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    nop

    .line 745
    return-void

    .line 743
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    throw v2
.end method
