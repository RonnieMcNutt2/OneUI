.class public final Landroid/view/displayhash/DisplayHashManager;
.super Ljava/lang/Object;
.source "DisplayHashManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayHashManager"

.field private static sSupportedHashAlgorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSupportedHashingAlgorithmLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/displayhash/DisplayHashManager;->mSupportedHashingAlgorithmLock:Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public getSupportedHashAlgorithms()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/view/displayhash/DisplayHashManager;->mSupportedHashingAlgorithmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_3
    sget-object v1, Landroid/view/displayhash/DisplayHashManager;->sSupportedHashAlgorithms:Ljava/util/Set;

    if-eqz v1, :cond_9

    .line 66
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2f

    return-object v1

    .line 70
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Landroid/view/IWindowManager;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "supportedAlgorithms":[Ljava/lang/String;
    if-nez v1, :cond_19

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_22
    .catchall {:try_start_9 .. :try_end_17} :catchall_2f

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_2f

    return-object v2

    .line 75
    :cond_19
    :try_start_19
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v2, Landroid/view/displayhash/DisplayHashManager;->sSupportedHashAlgorithms:Ljava/util/Set;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_22
    .catchall {:try_start_19 .. :try_end_20} :catchall_2f

    .line 76
    :try_start_20
    monitor-exit v0

    return-object v2

    .line 77
    .end local v1    # "supportedAlgorithms":[Ljava/lang/String;
    :catch_22
    move-exception v1

    .line 78
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DisplayHashManager"

    const-string v3, "Failed to send request getSupportedHashingAlgorithms"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/displayhash/DisplayHashManager;
    throw v2

    .line 81
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/displayhash/DisplayHashManager;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public setDisplayHashThrottlingEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 111
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setDisplayHashThrottlingEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 113
    goto :goto_9

    .line 112
    :catch_8
    move-exception v0

    .line 114
    :goto_9
    return-void
.end method

.method public verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;
    .registers 5
    .param p1, "displayHash"    # Landroid/view/displayhash/DisplayHash;

    .line 94
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 95
    :catch_9
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplayHashManager"

    const-string v2, "Failed to send request verifyImpressionToken"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
