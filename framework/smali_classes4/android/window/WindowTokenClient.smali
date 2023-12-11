.class public Landroid/window/WindowTokenClient;
.super Landroid/app/IWindowToken$Stub;
.source "WindowTokenClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAttachToWindowContainer:Z

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field private mShouldDumpConfigForIme:Z

.field private mWms:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic $r8$lambda$dksuha9wiYK0RVbjOovu43cfBJE(Landroid/window/WindowTokenClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/WindowTokenClient;->onWindowTokenRemovedInner()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 70
    const-class v0, Landroid/window/WindowTokenClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/app/IWindowToken$Stub;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 82
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    .line 89
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getWindowManagerService()Landroid/view/IWindowManager;
    .registers 3

    .line 186
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    if-nez v0, :cond_21

    .line 190
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    .line 191
    nop

    .line 192
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    .line 193
    return-object v0

    .line 196
    :cond_1b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    .line 198
    :cond_21
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private onWindowTokenRemovedInner()V
    .registers 3

    .line 308
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 309
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_12

    .line 310
    invoke-virtual {v0}, Landroid/content/Context;->destroy()V

    .line 311
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 313
    :cond_12
    return-void
.end method


# virtual methods
.method public attachContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_19

    .line 105
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 106
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_15

    instance-of v0, p1, Landroid/inputmethodservice/AbstractInputMethodService;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iput-boolean v0, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    .line 108
    return-void

    .line 103
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context is already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachToDisplayArea(IILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "type"    # I
    .param p2, "displayId"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 121
    :try_start_0
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 122
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/view/IWindowManager;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 123
    .local v0, "configuration":Landroid/content/res/Configuration;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 124
    return v1

    .line 126
    :cond_c
    invoke-virtual {p0, v0, p2, v1}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 128
    return v1

    .line 129
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    :catch_13
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public attachToDisplayContent(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 141
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 143
    .local v0, "wms":Landroid/view/IWindowManager;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 144
    return v1

    .line 147
    :cond_8
    :try_start_8
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 148
    .local v2, "configuration":Landroid/content/res/Configuration;
    if-nez v2, :cond_f

    .line 149
    return v1

    .line 151
    :cond_f
    invoke-virtual {p0, v2, p1, v1}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16

    .line 153
    return v1

    .line 154
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    :catch_16
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public attachToWindowToken(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 166
    :try_start_0
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 170
    nop

    .line 171
    return-void

    .line 168
    :catch_c
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public detachFromWindowContainerIfNeeded()V
    .registers 3

    .line 175
    iget-boolean v0, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z

    if-nez v0, :cond_5

    .line 176
    return-void

    .line 179
    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 182
    nop

    .line 183
    return-void

    .line 180
    :catch_e
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I

    .line 210
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowTokenClient;)V

    .line 211
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 210
    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 211
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;IZ)V
    .registers 13
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I
    .param p3, "shouldReportConfigChange"    # Z

    .line 237
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 238
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_b

    .line 239
    return-void

    .line 241
    :cond_b
    invoke-static {p1}, Landroid/content/res/CompatibilityInfo;->applyOverrideScaleIfNeeded(Landroid/content/res/Configuration;)V

    .line 247
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    monitor-enter v1

    .line 248
    :try_start_11
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-static {v2, p2}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v2

    .line 249
    .local v2, "displayChanged":Z
    iget-object v4, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p1

    move v7, v2

    invoke-static/range {v3 .. v8}, Landroid/window/ConfigurationHelper;->shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z

    move-result v3

    .line 252
    .local v3, "shouldUpdateResources":Z
    iget-object v4, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v4

    .line 253
    .local v4, "diff":I
    iget-boolean v5, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v5, :cond_36

    new-instance v5, Landroid/content/res/Configuration;

    iget-object v6, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    .line 254
    .local v5, "currentConfig":Landroid/content/res/Configuration;
    :goto_37
    if-eqz v3, :cond_3e

    .line 255
    iget-object v6, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 257
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_fd

    .line 259
    if-nez v3, :cond_79

    iget-boolean v1, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v1, :cond_79

    .line 260
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration not dispatch to IME because configuration is up to date. Current config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 261
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reported config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_79
    if-eqz v3, :cond_f7

    .line 267
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v1, p0, p1, p2}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 269
    if-eqz p3, :cond_8c

    instance-of v1, v0, Landroid/window/WindowContext;

    if-eqz v1, :cond_8c

    .line 270
    move-object v1, v0

    check-cast v1, Landroid/window/WindowContext;

    .line 271
    .local v1, "windowContext":Landroid/window/WindowContext;
    invoke-virtual {v1, p1}, Landroid/window/WindowContext;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 275
    .end local v1    # "windowContext":Landroid/window/WindowContext;
    :cond_8c
    if-eqz p3, :cond_9a

    if-eqz v4, :cond_9a

    instance-of v1, v0, Landroid/window/WindowProviderService;

    if-eqz v1, :cond_9a

    .line 277
    move-object v1, v0

    check-cast v1, Landroid/window/WindowProviderService;

    .line 278
    .local v1, "windowProviderService":Landroid/window/WindowProviderService;
    invoke-virtual {v1, p1}, Landroid/window/WindowProviderService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 280
    .end local v1    # "windowProviderService":Landroid/window/WindowProviderService;
    :cond_9a
    invoke-static {v4}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 281
    iget-boolean v1, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v1, :cond_f7

    .line 282
    if-nez p3, :cond_c1

    .line 283
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Only apply configuration update to Resources because shouldReportConfigChange is false.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 284
    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 283
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 285
    :cond_c1
    if-nez v4, :cond_f7

    .line 286
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration not dispatch to IME because configuration has no  public difference with updated config.  Current config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 288
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reported config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 286
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_f7
    :goto_f7
    if-eqz v2, :cond_fc

    .line 295
    invoke-virtual {v0, p2}, Landroid/content/Context;->updateDisplay(I)V

    .line 297
    :cond_fc
    return-void

    .line 257
    .end local v2    # "displayChanged":Z
    .end local v3    # "shouldUpdateResources":Z
    .end local v4    # "diff":I
    .end local v5    # "currentConfig":Landroid/content/res/Configuration;
    :catchall_fd
    move-exception v2

    :try_start_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v2
.end method

.method public onWindowTokenRemoved()V
    .registers 3

    .line 302
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method
