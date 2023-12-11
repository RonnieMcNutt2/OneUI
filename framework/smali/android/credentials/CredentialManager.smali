.class public final Landroid/credentials/CredentialManager;
.super Ljava/lang/Object;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/CredentialManager$GetCredentialTransport;,
        Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;,
        Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;,
        Landroid/credentials/CredentialManager$CreateCredentialTransport;,
        Landroid/credentials/CredentialManager$ClearCredentialStateTransport;,
        Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;,
        Landroid/credentials/CredentialManager$ProviderFilter;
    }
.end annotation


# static fields
.field private static final DEVICE_CONFIG_ENABLE_CREDENTIAL_DESC_API:Ljava/lang/String; = "enable_credential_description_api"

.field public static final DEVICE_CONFIG_ENABLE_CREDENTIAL_MANAGER:Ljava/lang/String; = "enable_credential_manager"

.field public static final PROVIDER_FILTER_ALL_PROVIDERS:I = 0x0

.field public static final PROVIDER_FILTER_SYSTEM_PROVIDERS_ONLY:I = 0x1

.field public static final PROVIDER_FILTER_USER_PROVIDERS_ONLY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CredentialManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/credentials/ICredentialManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/credentials/ICredentialManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/credentials/ICredentialManager;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    .line 117
    return-void
.end method

.method private isCredentialDescriptionApiEnabled()Z
    .registers 4

    .line 501
    const-string v0, "enable_credential_description_api"

    const/4 v1, 0x0

    const-string v2, "credential_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCredentialDescriptionApiEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 489
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 490
    return v0

    .line 492
    :cond_4
    nop

    .line 493
    const-string v1, "credential"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialManager;

    .line 494
    .local v1, "credentialManager":Landroid/credentials/CredentialManager;
    if-eqz v1, :cond_14

    .line 495
    invoke-direct {v1}, Landroid/credentials/CredentialManager;->isCredentialDescriptionApiEnabled()Z

    move-result v0

    return v0

    .line 497
    :cond_14
    return v0
.end method

.method private isServiceEnabled()Z
    .registers 3

    .line 477
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    invoke-interface {v0}, Landroid/credentials/ICredentialManager;->isServiceEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 478
    :catch_7
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isServiceEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 458
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 459
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 460
    return v0

    .line 462
    :cond_9
    nop

    .line 463
    const-string v1, "credential"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialManager;

    .line 464
    .local v1, "credentialManager":Landroid/credentials/CredentialManager;
    if-eqz v1, :cond_19

    .line 465
    invoke-direct {v1}, Landroid/credentials/CredentialManager;->isServiceEnabled()Z

    move-result v0

    return v0

    .line 467
    :cond_19
    return v0
.end method


# virtual methods
.method public clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "request"    # Landroid/credentials/ClearCredentialStateRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/ClearCredentialStateRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/ClearCredentialStateException;",
            ">;)V"
        }
    .end annotation

    .line 329
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/credentials/ClearCredentialStateException;>;"
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    const-string v0, "callback must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    if-eqz p2, :cond_20

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 334
    const-string v0, "CredentialManager"

    const-string v1, "clearCredentialState already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void

    .line 338
    :cond_20
    const/4 v0, 0x0

    .line 340
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    :try_start_21
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p3, p4, v3}, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$ClearCredentialStateTransport-IA;)V

    iget-object v3, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 344
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-interface {v1, p1, v2, v3}, Landroid/credentials/ICredentialManager;->clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/credentials/IClearCredentialStateCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_33} :catch_35

    move-object v0, v1

    .line 347
    goto :goto_39

    .line 345
    :catch_35
    move-exception v1

    .line 346
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 349
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_39
    if-eqz p2, :cond_40

    if-eqz v0, :cond_40

    .line 350
    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 352
    :cond_40
    return-void
.end method

.method public createCredential(Landroid/content/Context;Landroid/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Landroid/credentials/CreateCredentialRequest;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/CreateCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/CreateCredentialResponse;",
            "Landroid/credentials/CreateCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/CreateCredentialResponse;Landroid/credentials/CreateCredentialException;>;"
    const-string/jumbo v0, "request must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 287
    const-string v0, "CredentialManager"

    const-string v1, "createCredential already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 291
    :cond_25
    const/4 v0, 0x0

    .line 293
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    :try_start_26
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$CreateCredentialTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p4, p5, v3}, Landroid/credentials/CredentialManager$CreateCredentialTransport;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$CreateCredentialTransport-IA;)V

    iget-object v3, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-interface {v1, p2, v2, v3}, Landroid/credentials/ICredentialManager;->executeCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_38} :catch_3a

    move-object v0, v1

    .line 300
    goto :goto_3e

    .line 298
    :catch_3a
    move-exception v1

    .line 299
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 302
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3e
    if-eqz p3, :cond_45

    if-eqz v0, :cond_45

    .line 303
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 305
    :cond_45
    return-void
.end method

.method public getCredential(Landroid/content/Context;Landroid/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Landroid/credentials/GetCredentialRequest;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/GetCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    const-string/jumbo v0, "request must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 148
    const-string v0, "CredentialManager"

    const-string v1, "getCredential already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 152
    :cond_25
    const/4 v0, 0x0

    .line 154
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    :try_start_26
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$GetCredentialTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p4, p5, v3}, Landroid/credentials/CredentialManager$GetCredentialTransport;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$GetCredentialTransport-IA;)V

    iget-object v3, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-interface {v1, p2, v2, v3}, Landroid/credentials/ICredentialManager;->executeGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_38} :catch_3a

    move-object v0, v1

    .line 161
    goto :goto_3e

    .line 159
    :catch_3a
    move-exception v1

    .line 160
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 163
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3e
    if-eqz p3, :cond_45

    if-eqz v0, :cond_45

    .line 164
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 166
    :cond_45
    return-void
.end method

.method public getCredential(Landroid/content/Context;Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingGetCredentialHandle"    # Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    const-string/jumbo v0, "pendingGetCredentialHandle must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 199
    const-string v0, "CredentialManager"

    const-string v1, "getCredential already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 203
    :cond_25
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->show(Landroid/content/Context;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 204
    return-void
.end method

.method public getCredentialProviderServices(II)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "providerFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 445
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    invoke-interface {v0, p1, p2}, Landroid/credentials/ICredentialManager;->getCredentialProviderServices(II)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 446
    :catch_7
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCredentialProviderServicesForTesting(I)Ljava/util/List;
    .registers 4
    .param p1, "providerFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    invoke-interface {v0, p1}, Landroid/credentials/ICredentialManager;->getCredentialProviderServicesForTesting(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 425
    :catch_7
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnabledCredentialProviderService(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 398
    const-string v0, "componentName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 401
    :try_start_5
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    iget-object v1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 402
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-interface {v0, p1, v1}, Landroid/credentials/ICredentialManager;->isEnabledCredentialProviderService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return v0

    .line 403
    :catch_12
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public prepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 10
    .param p1, "request"    # Landroid/credentials/GetCredentialRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/GetCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/PrepareGetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/PrepareGetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    const-string v0, "callback must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    if-eqz p2, :cond_21

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 233
    const-string v0, "CredentialManager"

    const-string/jumbo v1, "prepareGetCredential already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 237
    :cond_21
    const/4 v0, 0x0

    .line 238
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    new-instance v1, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;-><init>(Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase-IA;)V

    .line 241
    .local v1, "getCredentialTransport":Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;
    :try_start_28
    iget-object v3, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v4, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;

    invoke-direct {v4, p3, p4, v1, v2}, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;Landroid/credentials/CredentialManager$PrepareGetCredentialTransport-IA;)V

    iget-object v2, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 247
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-interface {v3, p1, v4, v1, v2}, Landroid/credentials/ICredentialManager;->executePrepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IPrepareGetCredentialCallback;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v2
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_39} :catch_3b

    move-object v0, v2

    .line 250
    goto :goto_3f

    .line 248
    :catch_3b
    move-exception v2

    .line 249
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 252
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3f
    if-eqz p2, :cond_46

    if-eqz v0, :cond_46

    .line 253
    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 255
    :cond_46
    return-void
.end method

.method public registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/credentials/RegisterCredentialDescriptionRequest;

    .line 522
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    :try_start_6
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    iget-object v1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/credentials/ICredentialManager;->registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 528
    goto :goto_16

    .line 526
    :catch_12
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 529
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public setEnabledProviders(Ljava/util/List;Ljava/util/List;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p3, "userId"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/SetEnabledProvidersException;",
            ">;)V"
        }
    .end annotation

    .line 375
    .local p1, "primaryProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/credentials/SetEnabledProvidersException;>;"
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 377
    const-string/jumbo v0, "providers must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    const-string/jumbo v0, "primaryProviders must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    :try_start_16
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v1, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;

    const/4 v2, 0x0

    invoke-direct {v1, p4, p5, v2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$SetEnabledProvidersTransport-IA;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/credentials/ICredentialManager;->setEnabledProviders(Ljava/util/List;Ljava/util/List;ILandroid/credentials/ISetEnabledProvidersCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    .line 386
    goto :goto_26

    .line 384
    :catch_22
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method

.method public unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/credentials/UnregisterCredentialDescriptionRequest;

    .line 540
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 543
    :try_start_6
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    iget-object v1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/credentials/ICredentialManager;->unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 546
    goto :goto_16

    .line 544
    :catch_12
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 547
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method
