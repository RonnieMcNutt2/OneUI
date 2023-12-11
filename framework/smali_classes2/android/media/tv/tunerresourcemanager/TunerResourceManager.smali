.class public Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
.super Ljava/lang/Object;
.source "TunerResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;,
        Landroid/media/tv/tunerresourcemanager/TunerResourceManager$TunerResourceType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final INVALID_OWNER_ID:I = -0x1

.field public static final INVALID_RESOURCE_HANDLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TunerResourceManager"

.field public static final TUNER_RESOURCE_TYPE_CAS_SESSION:I = 0x4

.field public static final TUNER_RESOURCE_TYPE_DEMUX:I = 0x1

.field public static final TUNER_RESOURCE_TYPE_DESCRAMBLER:I = 0x2

.field public static final TUNER_RESOURCE_TYPE_FRONTEND:I = 0x0

.field public static final TUNER_RESOURCE_TYPE_FRONTEND_CICAM:I = 0x5

.field public static final TUNER_RESOURCE_TYPE_LNB:I = 0x3

.field public static final TUNER_RESOURCE_TYPE_MAX:I = 0x6


# instance fields
.field private final mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    const-string v0, "TunerResourceManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;I)V
    .registers 3
    .param p1, "service"    # Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;
    .param p2, "userId"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    .line 102
    iput p2, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mUserId:I

    .line 103
    return-void
.end method


# virtual methods
.method public acquireLock(I)Z
    .registers 5
    .param p1, "clientId"    # I

    .line 358
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->acquireLock(IJ)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 359
    :catch_f
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearResourceMap(I)V
    .registers 4
    .param p1, "resourceType"    # I

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->clearResourceMap(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 254
    nop

    .line 255
    return-void

    .line 252
    :catch_7
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getClientPriority(II)I
    .registers 5
    .param p1, "useCase"    # I
    .param p2, "pid"    # I

    .line 794
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->getClientPriority(II)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 795
    :catch_7
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getConfigPriority(IZ)I
    .registers 5
    .param p1, "useCase"    # I
    .param p2, "isForeground"    # Z

    .line 817
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->getConfigPriority(IZ)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 818
    :catch_7
    move-exception v0

    .line 819
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMaxNumberOfFrontends(I)I
    .registers 5
    .param p1, "frontendType"    # I

    .line 448
    const/4 v0, -0x1

    .line 450
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->getMaxNumberOfFrontends(I)I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 453
    nop

    .line 454
    return v0

    .line 451
    :catch_a
    move-exception v1

    .line 452
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public hasUnusedFrontend(I)Z
    .registers 5
    .param p1, "frontendType"    # I

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->hasUnusedFrontend(I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 195
    nop

    .line 196
    return v0

    .line 193
    :catch_a
    move-exception v1

    .line 194
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .registers 5
    .param p1, "challengerProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "holderProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 774
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 775
    :catch_7
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isLowestPriority(II)Z
    .registers 6
    .param p1, "clientId"    # I
    .param p2, "frontendType"    # I

    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->isLowestPriority(II)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 218
    nop

    .line 219
    return v0

    .line 216
    :catch_a
    move-exception v1

    .line 217
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V
    .registers 7
    .param p1, "profile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;
    .param p4, "clientId"    # [I

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;

    invoke-direct {v1, p0, p2, p3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;-><init>(Landroid/media/tv/tunerresourcemanager/TunerResourceManager;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V

    invoke-interface {v0, p1, v1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 140
    nop

    .line 141
    return-void

    .line 138
    :catch_c
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public releaseCasSession(II)V
    .registers 5
    .param p1, "casSessionHandle"    # I
    .param p2, "clientId"    # I

    .line 720
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseCasSession(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 723
    nop

    .line 724
    return-void

    .line 721
    :catch_7
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public releaseCiCam(II)V
    .registers 5
    .param p1, "ciCamHandle"    # I
    .param p2, "clientId"    # I

    .line 739
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseCiCam(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 742
    nop

    .line 743
    return-void

    .line 740
    :catch_7
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public releaseDemux(II)V
    .registers 5
    .param p1, "demuxHandle"    # I
    .param p2, "clientId"    # I

    .line 685
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseDemux(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 688
    nop

    .line 689
    return-void

    .line 686
    :catch_7
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public releaseDescrambler(II)V
    .registers 5
    .param p1, "descramblerHandle"    # I
    .param p2, "clientId"    # I

    .line 701
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseDescrambler(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 704
    nop

    .line 705
    return-void

    .line 702
    :catch_7
    move-exception v0

    .line 703
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public releaseFrontend(II)V
    .registers 5
    .param p1, "frontendHandle"    # I
    .param p2, "clientId"    # I

    .line 669
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseFrontend(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 672
    nop

    .line 673
    return-void

    .line 670
    :catch_7
    move-exception v0

    .line 671
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public releaseLnb(II)V
    .registers 5
    .param p1, "lnbHandle"    # I
    .param p2, "clientId"    # I

    .line 757
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseLnb(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 760
    nop

    .line 761
    return-void

    .line 758
    :catch_7
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public releaseLock(I)Z
    .registers 4
    .param p1, "clientId"    # I

    .line 378
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseLock(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 379
    :catch_7
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    .param p2, "casSessionHandle"    # [I

    .line 582
    const/4 v0, 0x0

    .line 584
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 587
    nop

    .line 588
    return v0

    .line 585
    :catch_a
    move-exception v1

    .line 586
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    .param p2, "ciCamHandle"    # [I

    .line 614
    const/4 v0, 0x0

    .line 616
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 619
    nop

    .line 620
    return v0

    .line 617
    :catch_a
    move-exception v1

    .line 618
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    .param p2, "demuxHandle"    # [I

    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 520
    nop

    .line 521
    return v0

    .line 518
    :catch_a
    move-exception v1

    .line 519
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .param p2, "descramblerHandle"    # [I

    .line 549
    const/4 v0, 0x0

    .line 551
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 554
    nop

    .line 555
    return v0

    .line 552
    :catch_a
    move-exception v1

    .line 553
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .param p2, "frontendHandle"    # [I

    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 416
    nop

    .line 417
    return v0

    .line 414
    :catch_a
    move-exception v1

    .line 415
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    .param p2, "lnbHandle"    # [I

    .line 647
    const/4 v0, 0x0

    .line 649
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 652
    nop

    .line 653
    return v0

    .line 650
    :catch_a
    move-exception v1

    .line 651
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public restoreResourceMap(I)V
    .registers 4
    .param p1, "resourceType"    # I

    .line 268
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->restoreResourceMap(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 271
    nop

    .line 272
    return-void

    .line 269
    :catch_7
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .registers 4
    .param p1, "infos"    # [Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;

    .line 302
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 305
    nop

    .line 306
    return-void

    .line 303
    :catch_7
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .registers 4
    .param p1, "infos"    # [Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;

    .line 285
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 288
    nop

    .line 289
    return-void

    .line 286
    :catch_7
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setLnbInfoList([I)V
    .registers 4
    .param p1, "lnbIds"    # [I

    .line 336
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setLnbInfoList([I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 339
    nop

    .line 340
    return-void

    .line 337
    :catch_7
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMaxNumberOfFrontends(II)Z
    .registers 6
    .param p1, "frontendType"    # I
    .param p2, "maxNum"    # I

    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setMaxNumberOfFrontends(II)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 435
    nop

    .line 436
    return v0

    .line 433
    :catch_a
    move-exception v1

    .line 434
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public shareFrontend(II)V
    .registers 5
    .param p1, "selfClientId"    # I
    .param p2, "targetClientId"    # I

    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->shareFrontend(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 471
    nop

    .line 472
    return-void

    .line 469
    :catch_7
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public storeResourceMap(I)V
    .registers 4
    .param p1, "resourceType"    # I

    .line 233
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->storeResourceMap(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 236
    nop

    .line 237
    return-void

    .line 234
    :catch_7
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public transferOwner(III)Z
    .registers 6
    .param p1, "resourceType"    # I
    .param p2, "currentOwnerId"    # I
    .param p3, "newOwnerId"    # I

    .line 487
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->transferOwner(III)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 488
    :catch_7
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterClientProfile(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 151
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->unregisterClientProfile(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 154
    nop

    .line 155
    return-void

    .line 152
    :catch_7
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateCasInfo(II)V
    .registers 5
    .param p1, "casSystemId"    # I
    .param p2, "maxSessionNum"    # I

    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->updateCasInfo(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 323
    nop

    .line 324
    return-void

    .line 321
    :catch_7
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateClientPriority(III)Z
    .registers 7
    .param p1, "clientId"    # I
    .param p2, "priority"    # I
    .param p3, "niceValue"    # I

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->updateClientPriority(III)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    move v0, v1

    .line 180
    nop

    .line 181
    return v0

    .line 178
    :catch_a
    move-exception v1

    .line 179
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
