.class Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;
.super Lcom/samsung/android/multicontrol/IInputFilterInstallListener$Stub;
.source "SemMultiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/SemMultiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputFilterInstallListenerDelegate"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/multicontrol/IInputFilterInstallListener$Stub;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 196
    return-void
.end method


# virtual methods
.method nullOutListenerLocked()V
    .registers 2

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 231
    return-void
.end method

.method public onInstalled()V
    .registers 3

    .line 201
    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 202
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 203
    .local v1, "listener":Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 205
    if-eqz v1, :cond_d

    .line 206
    invoke-interface {v1}, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;->onInstalled()V

    .line 208
    :cond_d
    return-void

    .line 203
    .end local v1    # "listener":Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onUninstalled()V
    .registers 3

    .line 213
    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 214
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 215
    .local v1, "listener":Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 217
    if-eqz v1, :cond_d

    .line 218
    invoke-interface {v1}, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;->onUninstalled()V

    .line 220
    :cond_d
    return-void

    .line 215
    .end local v1    # "listener":Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 224
    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 225
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 226
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method
