.class Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;
.super Landroid/service/contentcapture/IDataShareReadAdapter$Stub;
.source "ContentCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/ContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataShareReadAdapterDelegate"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mResourceManagerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/service/contentcapture/DataShareReadAdapter;Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "adapter"    # Landroid/service/contentcapture/DataShareReadAdapter;
    .param p3, "resourceManager"    # Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    .line 663
    invoke-direct {p0}, Landroid/service/contentcapture/IDataShareReadAdapter$Stub;-><init>()V

    .line 660
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mLock:Ljava/lang/Object;

    .line 664
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-virtual {p3, p0, p2, p1}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->initializeForDelegate(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;Landroid/service/contentcapture/DataShareReadAdapter;Ljava/util/concurrent/Executor;)V

    .line 669
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mResourceManagerReference:Ljava/lang/ref/WeakReference;

    .line 670
    return-void
.end method

.method private clearHardReferences()V
    .registers 4

    .line 721
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mResourceManagerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    .line 722
    .local v0, "resourceManager":Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;
    if-nez v0, :cond_14

    .line 723
    invoke-static {}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t clear references, resource manager has been GC\'ed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 727
    :cond_14
    invoke-virtual {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->clearHardReferences(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;)V

    .line 728
    return-void
.end method

.method private executeAdapterMethodLocked(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 9
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/contentcapture/DataShareReadAdapter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 698
    .local p1, "adapterFn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/contentcapture/DataShareReadAdapter;>;"
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mResourceManagerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    .line 699
    .local v0, "resourceManager":Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;
    const-string v1, "Can\'t execute "

    if-nez v0, :cond_2b

    .line 700
    invoke-static {}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "(), resource manager has been GC\'ed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-void

    .line 704
    :cond_2b
    invoke-virtual {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->getAdapter(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;)Landroid/service/contentcapture/DataShareReadAdapter;

    move-result-object v2

    .line 705
    .local v2, "adapter":Landroid/service/contentcapture/DataShareReadAdapter;
    invoke-virtual {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->getExecutor(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 707
    .local v3, "executor":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_4e

    if-nez v3, :cond_38

    goto :goto_4e

    .line 712
    :cond_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 714
    .local v4, "identity":J
    :try_start_3c
    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v2}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/service/contentcapture/DataShareReadAdapter;)V

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_49

    .line 716
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 717
    nop

    .line 718
    return-void

    .line 716
    :catchall_49
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 717
    throw v1

    .line 708
    .end local v4    # "identity":J
    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "(), references are null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void
.end method

.method static synthetic lambda$error$1(ILandroid/service/contentcapture/DataShareReadAdapter;)V
    .registers 2
    .param p0, "errorCode"    # I
    .param p1, "adapter"    # Landroid/service/contentcapture/DataShareReadAdapter;

    .line 684
    invoke-interface {p1, p0}, Landroid/service/contentcapture/DataShareReadAdapter;->onError(I)V

    return-void
.end method

.method static synthetic lambda$executeAdapterMethodLocked$2(Ljava/util/function/Consumer;Landroid/service/contentcapture/DataShareReadAdapter;)V
    .registers 2
    .param p0, "adapterFn"    # Ljava/util/function/Consumer;
    .param p1, "adapter"    # Landroid/service/contentcapture/DataShareReadAdapter;

    .line 714
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$start$0(Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/DataShareReadAdapter;)V
    .registers 2
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "adapter"    # Landroid/service/contentcapture/DataShareReadAdapter;

    .line 676
    invoke-interface {p1, p0}, Landroid/service/contentcapture/DataShareReadAdapter;->onStart(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method public error(I)V
    .registers 5
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_3
    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda2;-><init>(I)V

    const-string/jumbo v2, "onError"

    invoke-direct {p0, v1, v2}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->executeAdapterMethodLocked(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 685
    invoke-direct {p0}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->clearHardReferences()V

    .line 686
    monitor-exit v0

    .line 687
    return-void

    .line 686
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_3
    invoke-direct {p0}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->clearHardReferences()V

    .line 693
    monitor-exit v0

    .line 694
    return-void

    .line 693
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public start(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_3
    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const-string/jumbo v2, "onStart"

    invoke-direct {p0, v1, v2}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->executeAdapterMethodLocked(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 677
    monitor-exit v0

    .line 678
    return-void

    .line 677
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method
