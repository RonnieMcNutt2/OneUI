.class public final Landroid/app/compat/ChangeIdStateCache;
.super Landroid/app/PropertyInvalidatedCache;
.source "ChangeIdStateCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/app/compat/ChangeIdStateQuery;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_KEY:Ljava/lang/String; = "cache_key.is_compat_change_enabled"

.field private static final MAX_ENTRIES:I = 0x40

.field private static sDisabled:Z


# instance fields
.field private volatile mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/compat/ChangeIdStateCache;->sDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    const/16 v0, 0x40

    const-string v1, "cache_key.is_compat_change_enabled"

    invoke-direct {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    .line 42
    return-void
.end method

.method public static disable()V
    .registers 1

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/compat/ChangeIdStateCache;->sDisabled:Z

    .line 52
    return-void
.end method

.method public static invalidate()V
    .registers 1

    .line 61
    sget-boolean v0, Landroid/app/compat/ChangeIdStateCache;->sDisabled:Z

    if-nez v0, :cond_9

    .line 62
    const-string v0, "cache_key.is_compat_change_enabled"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 64
    :cond_9
    return-void
.end method


# virtual methods
.method getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;
    .registers 4

    .line 68
    iget-object v0, p0, Landroid/app/compat/ChangeIdStateCache;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 69
    .local v0, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    if-nez v0, :cond_28

    .line 70
    monitor-enter p0

    .line 71
    :try_start_5
    iget-object v1, p0, Landroid/app/compat/ChangeIdStateCache;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    move-object v0, v1

    .line 72
    if-nez v0, :cond_23

    .line 73
    const-string/jumbo v1, "platform_compat"

    .line 74
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    move-object v0, v1

    .line 75
    if-eqz v0, :cond_1b

    .line 79
    iput-object v0, p0, Landroid/app/compat/ChangeIdStateCache;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    goto :goto_23

    .line 76
    :cond_1b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get PlatformCompatService instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    .end local p0    # "this":Landroid/app/compat/ChangeIdStateCache;
    throw v1

    .line 81
    .restart local v0    # "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    .restart local p0    # "this":Landroid/app/compat/ChangeIdStateCache;
    :cond_23
    :goto_23
    monitor-exit p0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v1

    .line 83
    :cond_28
    :goto_28
    return-object v0
.end method

.method public recompute(Landroid/app/compat/ChangeIdStateQuery;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "query"    # Landroid/app/compat/ChangeIdStateQuery;

    .line 88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 90
    .local v0, "token":J
    :try_start_4
    iget v2, p1, Landroid/app/compat/ChangeIdStateQuery;->type:I

    if-nez v2, :cond_1e

    .line 91
    invoke-virtual {p0}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iget-wide v3, p1, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    iget-object v5, p1, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    iget v6, p1, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_54
    .catchall {:try_start_4 .. :try_end_1a} :catchall_52

    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    return-object v2

    .line 94
    :cond_1e
    :try_start_1e
    iget v2, p1, Landroid/app/compat/ChangeIdStateQuery;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    .line 95
    invoke-virtual {p0}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iget-wide v3, p1, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    iget v5, p1, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_33} :catch_54
    .catchall {:try_start_1e .. :try_end_33} :catchall_52

    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    return-object v2

    .line 97
    :cond_37
    :try_start_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid query type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/compat/ChangeIdStateQuery;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":J
    .end local p0    # "this":Landroid/app/compat/ChangeIdStateCache;
    .end local p1    # "query":Landroid/app/compat/ChangeIdStateQuery;
    throw v2
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_52} :catch_54
    .catchall {:try_start_37 .. :try_end_52} :catchall_52

    .line 102
    .restart local v0    # "token":J
    .restart local p0    # "this":Landroid/app/compat/ChangeIdStateCache;
    .restart local p1    # "query":Landroid/app/compat/ChangeIdStateQuery;
    :catchall_52
    move-exception v2

    goto :goto_65

    .line 99
    :catch_54
    move-exception v2

    .line 100
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_55
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_52

    .line 102
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    nop

    .line 104
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not recompute value!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :goto_65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    throw v2
.end method

.method public bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 32
    check-cast p1, Landroid/app/compat/ChangeIdStateQuery;

    invoke-virtual {p0, p1}, Landroid/app/compat/ChangeIdStateCache;->recompute(Landroid/app/compat/ChangeIdStateQuery;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
