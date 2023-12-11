.class Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;
.super Landroid/credentials/ISetEnabledProvidersCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetEnabledProvidersTransport"
.end annotation


# instance fields
.field private final mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/SetEnabledProvidersException;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$IQanlNMqWEEivrR86kcbnW85tng(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/Void;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->lambda$onResponse$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lu_XpgSfVxV5upOHdWTU5mYMCW8(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;)V
    .registers 1

    invoke-direct {p0}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->lambda$onResponse$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$wL_ldNi1nv0FzqzMcClvxJdP_Cc(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/SetEnabledProvidersException;",
            ">;)V"
        }
    .end annotation

    .line 801
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/credentials/SetEnabledProvidersException;>;"
    invoke-direct {p0}, Landroid/credentials/ISetEnabledProvidersCallback$Stub;-><init>()V

    .line 802
    iput-object p1, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 803
    iput-object p2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    .line 804
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$SetEnabledProvidersTransport-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 830
    iget-object v0, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/SetEnabledProvidersException;

    invoke-direct {v1, p1, p2}, Landroid/credentials/SetEnabledProvidersException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onResponse$0(Ljava/lang/Void;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Void;

    .line 809
    iget-object v0, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onResponse$1()V
    .registers 3

    .line 819
    iget-object v0, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 827
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 829
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda1;-><init>(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    nop

    .line 835
    return-void

    .line 833
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    throw v2
.end method

.method public onResponse()V
    .registers 5

    .line 817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 819
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda2;-><init>(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 821
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 822
    nop

    .line 823
    return-void

    .line 821
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 822
    throw v2
.end method

.method public onResponse(Ljava/lang/Void;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Void;

    .line 807
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 809
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda0;-><init>(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/Void;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 811
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 812
    nop

    .line 813
    return-void

    .line 811
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 812
    throw v2
.end method
