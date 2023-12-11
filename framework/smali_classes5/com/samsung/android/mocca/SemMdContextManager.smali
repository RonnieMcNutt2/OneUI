.class public Lcom/samsung/android/mocca/SemMdContextManager;
.super Ljava/lang/Object;
.source "SemMdContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;,
        Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;,
        Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;
    }
.end annotation


# static fields
.field public static final CONTEXT_TYPE_ALL:Ljava/lang/String; = "all-context type"

.field public static final CONTEXT_TYPE_CAR_CRASH:Ljava/lang/String; = "ccd"

.field private static final TAG:Ljava/lang/String; = "SemMdContextManager"


# instance fields
.field private mAvailabilityCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;",
            "Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mContextEventCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;",
            "Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/mocca/IMoccaService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mocca/IMoccaService;)V
    .registers 3
    .param p1, "service"    # Lcom/samsung/android/mocca/IMoccaService;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    .line 79
    iput-object p1, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    .line 80
    return-void
.end method

.method static synthetic lambda$registerAvailabilityCallback$0(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;)Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    .registers 3
    .param p0, "cb"    # Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;

    .line 129
    new-instance v0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;-><init>(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;)V

    return-object v0
.end method

.method static synthetic lambda$registerContextEventCallback$1(Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;)Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    .registers 3
    .param p0, "cb"    # Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;

    .line 211
    new-instance v0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;-><init>(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;)V

    return-object v0
.end method


# virtual methods
.method public getSupportedTypes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const-string v1, "SemMdContextManager"

    if-nez v0, :cond_e

    .line 91
    const-string v0, "SemMdContextService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 96
    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/samsung/android/mocca/IMoccaService;->getSupportedTypes()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "supportedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_17

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_18

    return-object v1

    .line 98
    :cond_17
    return-object v0

    .line 99
    .end local v0    # "supportedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_18
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSupportedTypes : RemoteException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public registerAvailabilityCallback(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;Ljava/lang/String;)Z
    .registers 9
    .param p1, "callback"    # Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;
    .param p2, "contextType"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 118
    const-string v0, "SemMdContextManager"

    const-string v2, "RegisterAvailabilityCallback - SemMdContextService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1

    .line 122
    :cond_d
    if-eqz p1, :cond_5f

    if-nez p2, :cond_12

    goto :goto_5f

    .line 127
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 129
    :try_start_15
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    new-instance v3, Lcom/samsung/android/mocca/SemMdContextManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/mocca/SemMdContextManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;

    .line 130
    .local v2, "transport":Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    const-string v3, "all-context type"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 131
    iget-object v3, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/mocca/IMoccaService;->registerContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_31} :catch_3d
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_31} :catch_3d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_15 .. :try_end_31} :catch_3d
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_31} :catch_3d
    .catchall {:try_start_15 .. :try_end_31} :catchall_3b

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_3b

    return v1

    .line 133
    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v3, v2, p2}, Lcom/samsung/android/mocca/IMoccaService;->registerContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)Z

    move-result v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_3d
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_39} :catch_3d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_33 .. :try_end_39} :catch_3d
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_39} :catch_3d
    .catchall {:try_start_33 .. :try_end_39} :catchall_3b

    :try_start_39
    monitor-exit v0

    return v1

    .line 139
    .end local v2    # "transport":Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    :catchall_3b
    move-exception v1

    goto :goto_5d

    .line 135
    :catch_3d
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SemMdContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerAvailabilityCallbackImpl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    monitor-exit v0

    return v1

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_39 .. :try_end_5e} :catchall_3b

    throw v1

    .line 123
    :cond_5f
    :goto_5f
    const-string v0, "SemMdContextManager"

    const-string v2, "RegisterAvailabilityCallback - callback or contextType is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v1
.end method

.method public registerContextEventCallback(Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 10
    .param p1, "callback"    # Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;
    .param p2, "contextType"    # Ljava/lang/String;
    .param p3, "param"    # Landroid/os/Bundle;

    .line 195
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 196
    const-string v0, "SemMdContextManager"

    const-string/jumbo v2, "registerContextEventCallback- SemMdContextService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v1

    .line 200
    :cond_e
    if-eqz p1, :cond_61

    if-nez p2, :cond_13

    goto :goto_61

    .line 205
    :cond_13
    const-string v0, "all-context type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 206
    return v1

    .line 209
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 211
    :try_start_1f
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    new-instance v3, Lcom/samsung/android/mocca/SemMdContextManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/mocca/SemMdContextManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;

    .line 212
    .local v2, "transport":Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    iget-object v3, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    if-eqz p3, :cond_36

    new-instance v4, Lcom/samsung/android/mocca/ContextParam;

    invoke-direct {v4, p3}, Lcom/samsung/android/mocca/ContextParam;-><init>(Landroid/os/Bundle;)V

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    invoke-interface {v3, v2, p2, v4}, Lcom/samsung/android/mocca/IMoccaService;->registerContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;Lcom/samsung/android/mocca/ContextParam;)Z
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3a} :catch_3f
    .catchall {:try_start_1f .. :try_end_3a} :catchall_3d

    .line 214
    :try_start_3a
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 219
    .end local v2    # "transport":Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    :catchall_3d
    move-exception v1

    goto :goto_5f

    .line 215
    :catch_3f
    move-exception v2

    .line 216
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SemMdContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerContextEventCallback-registerContextListener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    monitor-exit v0

    return v1

    .line 219
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3a .. :try_end_60} :catchall_3d

    throw v1

    .line 201
    :cond_61
    :goto_61
    const-string v0, "SemMdContextManager"

    const-string/jumbo v2, "registerContextEventCallback - callback or contextType is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v1
.end method

.method public unregisterAvailabilityCallback(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 8
    .param p1, "callback"    # Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;
    .param p2, "contextType"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    if-nez v0, :cond_d

    .line 154
    const-string v0, "SemMdContextManager"

    const-string/jumbo v1, "unregisterAvailabilityCallback- SemMdContextService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 158
    :cond_d
    if-eqz p1, :cond_67

    if-nez p2, :cond_12

    goto :goto_67

    .line 163
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 165
    :try_start_15
    iget-object v1, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1d} :catch_45
    .catchall {:try_start_15 .. :try_end_1d} :catchall_43

    .line 167
    .local v1, "transport":Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    if-nez v1, :cond_21

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_43

    return-void

    .line 169
    :cond_21
    :try_start_21
    const-string v2, "all-context type"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 170
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/mocca/IMoccaService;->unregisterContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)V

    goto :goto_35

    .line 172
    :cond_30
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/mocca/IMoccaService;->unregisterContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)V

    .line 175
    :goto_35
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v2, v1}, Lcom/samsung/android/mocca/IMoccaService;->hasContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 176
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_42} :catch_45
    .catchall {:try_start_21 .. :try_end_42} :catchall_43

    .line 179
    .end local v1    # "transport":Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    :cond_42
    goto :goto_63

    .line 180
    :catchall_43
    move-exception v1

    goto :goto_65

    .line 177
    :catch_45
    move-exception v1

    .line 178
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_46
    const-string v2, "SemMdContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterAvailabilityCallback : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_63
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :goto_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_46 .. :try_end_66} :catchall_43

    throw v1

    .line 159
    :cond_67
    :goto_67
    const-string v0, "SemMdContextManager"

    const-string v1, "UnregisterAvailabilityCallback - callback or contextType is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public unregisterContextEventCallback(Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;Ljava/lang/String;)V
    .registers 8
    .param p1, "callback"    # Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;
    .param p2, "contextType"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    if-nez v0, :cond_d

    .line 235
    const-string v0, "SemMdContextManager"

    const-string/jumbo v1, "unregisterContextEventCallback - SemMdContextService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 239
    :cond_d
    if-eqz p1, :cond_67

    if-nez p2, :cond_12

    goto :goto_67

    .line 244
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 246
    :try_start_15
    iget-object v1, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1d} :catch_45
    .catchall {:try_start_15 .. :try_end_1d} :catchall_43

    .line 247
    .local v1, "transport":Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    if-nez v1, :cond_21

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_43

    return-void

    .line 249
    :cond_21
    :try_start_21
    const-string v2, "all-context type"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 250
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/mocca/IMoccaService;->unregisterContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)V

    goto :goto_35

    .line 252
    :cond_30
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/mocca/IMoccaService;->unregisterContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)V

    .line 255
    :goto_35
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v2, v1}, Lcom/samsung/android/mocca/IMoccaService;->hasContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 256
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_42} :catch_45
    .catchall {:try_start_21 .. :try_end_42} :catchall_43

    .line 260
    .end local v1    # "transport":Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    :cond_42
    goto :goto_63

    .line 261
    :catchall_43
    move-exception v1

    goto :goto_65

    .line 258
    :catch_45
    move-exception v1

    .line 259
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_46
    const-string v2, "SemMdContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterContextEventCallback : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_63
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :goto_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_46 .. :try_end_66} :catchall_43

    throw v1

    .line 240
    :cond_67
    :goto_67
    const-string v0, "SemMdContextManager"

    const-string/jumbo v1, "unregisterContextEventCallback - callback or contextType is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method
