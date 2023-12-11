.class final Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
.super Ljava/lang/Object;
.source "SmartspaceService.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/smartspace/SmartspaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Landroid/app/smartspace/SmartspaceTarget;",
        ">;>;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private mCallback:Landroid/app/smartspace/ISmartspaceCallback;

.field private final mOnBinderDied:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/smartspace/ISmartspaceCallback;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/smartspace/ISmartspaceCallback;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;)V"
        }
    .end annotation

    .line 288
    .local p2, "onBinderDied":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/smartspace/SmartspaceService$CallbackWrapper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    .line 290
    iput-object p2, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    .line 291
    if-eqz p2, :cond_2b

    .line 293
    :try_start_9
    invoke-interface {p1}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    .line 296
    goto :goto_2b

    .line 294
    :catch_12
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to link to death: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartspaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 281
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p1, "smartspaceTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/smartspace/SmartspaceTarget;>;"
    :try_start_0
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    if-eqz v0, :cond_c

    .line 316
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/app/smartspace/ISmartspaceCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 320
    :cond_c
    goto :goto_26

    .line 318
    :catch_d
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartspaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method

.method public binderDied()V
    .registers 2

    .line 331
    invoke-virtual {p0}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->destroy()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    .line 333
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_d

    .line 334
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 336
    :cond_d
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 324
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v1, :cond_10

    .line 325
    invoke-interface {v0}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 327
    :cond_10
    return-void
.end method

.method public isCallback(Landroid/app/smartspace/ISmartspaceCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 301
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    if-nez v0, :cond_d

    .line 302
    const-string v0, "SmartspaceService"

    const-string v1, "Callback is null, likely the binder has died."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x0

    return v0

    .line 305
    :cond_d
    invoke-interface {v0}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
