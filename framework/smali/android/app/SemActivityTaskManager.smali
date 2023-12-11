.class public Landroid/app/SemActivityTaskManager;
.super Ljava/lang/Object;
.source "SemActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemActivityTaskManager$TaskChangeController;
    }
.end annotation


# static fields
.field public static final CAMERA_CUTOUT_SETTING_APP_DEFAULT:I = 0x0

.field public static final CAMERA_CUTOUT_SETTING_HIDE:I = 0x2

.field public static final CAMERA_CUTOUT_SETTING_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemActivityTaskManager"

.field private static sInstance:Landroid/app/SemActivityTaskManager;


# instance fields
.field private final mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/app/SemTaskChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/app/SemActivityTaskManager$TaskChangeController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/SemActivityTaskManager$TaskChangeController;-><init>(Landroid/app/SemActivityTaskManager;Landroid/app/SemActivityTaskManager$TaskChangeController-IA;)V

    iput-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/app/SemActivityTaskManager;
    .registers 2

    const-class v0, Landroid/app/SemActivityTaskManager;

    monitor-enter v0

    .line 54
    :try_start_3
    sget-object v1, Landroid/app/SemActivityTaskManager;->sInstance:Landroid/app/SemActivityTaskManager;

    if-nez v1, :cond_e

    .line 55
    new-instance v1, Landroid/app/SemActivityTaskManager;

    invoke-direct {v1}, Landroid/app/SemActivityTaskManager;-><init>()V

    sput-object v1, Landroid/app/SemActivityTaskManager;->sInstance:Landroid/app/SemActivityTaskManager;

    .line 57
    :cond_e
    sget-object v1, Landroid/app/SemActivityTaskManager;->sInstance:Landroid/app/SemActivityTaskManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getTaskService()Landroid/app/IActivityTaskManager;
    .registers 1

    .line 61
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method private static warningException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .line 158
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_8

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 161
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "warningException() : caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_2d
    return-void
.end method


# virtual methods
.method public getCameraCutoutSetting(ILjava/lang/String;)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 150
    :try_start_0
    invoke-static {}, Landroid/app/SemActivityTaskManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->getCutoutPolicy(ILjava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 151
    :catch_9
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->warningException(Ljava/lang/Exception;)V

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public registerTaskChangeCallback(Landroid/app/SemTaskChangeCallback;)Z
    .registers 6
    .param p1, "taskChangeCallback"    # Landroid/app/SemTaskChangeCallback;

    .line 73
    iget-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 75
    const-string v1, "SemActivityTaskManager"

    const-string v3, "TaskChangeCallback already registered"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2c

    return v2

    .line 80
    :cond_15
    :try_start_15
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {}, Landroid/app/SemActivityTaskManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v3, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;

    invoke-interface {v1, v3}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_23} :catch_26
    .catchall {:try_start_15 .. :try_end_23} :catchall_2c

    .line 82
    :try_start_23
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 83
    :catch_26
    move-exception v1

    .line 84
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Landroid/app/SemActivityTaskManager;->warningException(Ljava/lang/Exception;)V

    .line 86
    .end local v1    # "e":Landroid/os/RemoteException;
    monitor-exit v0

    .line 88
    return v2

    .line 86
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public unregisterTaskChangeCallback(Landroid/app/SemTaskChangeCallback;)Z
    .registers 6
    .param p1, "taskChangeCallback"    # Landroid/app/SemTaskChangeCallback;

    .line 100
    iget-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 101
    :try_start_3
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 102
    const-string v1, "SemActivityTaskManager"

    const-string v3, "TaskChangeCallback no registered"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_35

    return v2

    .line 107
    :cond_15
    :try_start_15
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 109
    invoke-static {}, Landroid/app/SemActivityTaskManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v3, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;

    invoke-interface {v1, v3}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2b} :catch_2f
    .catchall {:try_start_15 .. :try_end_2b} :catchall_35

    .line 110
    :try_start_2b
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 114
    :cond_2e
    goto :goto_33

    .line 112
    :catch_2f
    move-exception v1

    .line 113
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Landroid/app/SemActivityTaskManager;->warningException(Ljava/lang/Exception;)V

    .line 115
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_33
    monitor-exit v0

    .line 117
    return v2

    .line 115
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw v1
.end method
