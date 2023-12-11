.class public Lcom/samsung/android/hardware/context/SemContextManager;
.super Ljava/lang/Object;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientInfo:Ljava/lang/String;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private mPackageName:Ljava/lang/String;

.field private mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClientInfo(Lcom/samsung/android/hardware/context/SemContextManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainLooper(Lcom/samsung/android/hardware/context/SemContextManager;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClientInfo(Lcom/samsung/android/hardware/context/SemContextManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckHistoryMode(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->checkHistoryMode(Lcom/samsung/android/hardware/context/SemContextEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 156
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 165
    nop

    .line 166
    const-string/jumbo v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 167
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 156
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 174
    nop

    .line 175
    const-string/jumbo v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 176
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    .line 177
    const-string v0, " "

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method private checkHistoryMode(Lcom/samsung/android/hardware/context/SemContextEvent;)Z
    .registers 10
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 1226
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1227
    .local v1, "res":Ljava/lang/Boolean;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1228
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v3

    .line 1229
    .local v3, "type":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSemContextChanged() : event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_84

    goto :goto_75

    .line 1236
    :sswitch_30
    nop

    .line 1237
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getStepLevelMonitorContext()Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    move-result-object v5

    .line 1238
    .local v5, "stepLevelMonitorContext":Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->getMode()I

    move-result v6

    if-ne v6, v4, :cond_3c

    move v0, v4

    :cond_3c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1239
    goto :goto_75

    .line 1241
    .end local v5    # "stepLevelMonitorContext":Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    :sswitch_41
    nop

    .line 1242
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getActivityBatchContext()Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    move-result-object v5

    .line 1243
    .local v5, "activityBatchContext":Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->getMode()I

    move-result v6

    if-ne v6, v4, :cond_4d

    move v0, v4

    :cond_4d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1244
    goto :goto_75

    .line 1246
    .end local v5    # "activityBatchContext":Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    :sswitch_52
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v0

    .line 1247
    .local v0, "autoRotation":Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    const-string v4, " Angle : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1248
    goto :goto_75

    .line 1232
    .end local v0    # "autoRotation":Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    :sswitch_64
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;

    move-result-object v5

    .line 1233
    .local v5, "pedometerContext":Lcom/samsung/android/hardware/context/SemContextPedometer;
    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_70

    move v0, v4

    :cond_70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1234
    nop

    .line 1252
    .end local v5    # "pedometerContext":Lcom/samsung/android/hardware/context/SemContextPedometer;
    :goto_75
    const-string v0, "SemContextManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    nop

    :sswitch_data_84
    .sparse-switch
        0x2 -> :sswitch_64
        0x6 -> :sswitch_52
        0x1a -> :sswitch_41
        0x21 -> :sswitch_30
    .end sparse-switch
.end method

.method private checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .line 1219
    if-nez p1, :cond_b

    .line 1220
    const-string v0, "SemContextManager"

    const-string v1, "Listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const/4 v0, 0x0

    return v0

    .line 1223
    :cond_b
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    return v0
.end method

.method private getAvailableServiceMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1173
    const/4 v0, 0x0

    .line 1174
    .local v0, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const-string v2, "SemContextManager"

    if-nez v1, :cond_14

    .line 1175
    const-string v1, "SemContextService is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->recoverService()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    return-object v1

    .line 1181
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1}, Lcom/samsung/android/hardware/context/ISemContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_1e

    move-object v0, v1

    .line 1184
    goto :goto_24

    .line 1182
    :catch_1e
    move-exception v1

    .line 1183
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in getAvailableServiceMap: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1185
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-object v0
.end method

.method private getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;

    .line 1195
    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2c

    .line 1199
    :cond_b
    const/4 v0, 0x0

    .line 1201
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    .line 1202
    .local v2, "delegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->getListener()Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1203
    move-object v0, v2

    .line 1204
    goto :goto_2b

    .line 1206
    .end local v2    # "delegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_2a
    goto :goto_12

    .line 1208
    :cond_2b
    :goto_2b
    return-object v0

    .line 1196
    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized recoverService()Z
    .registers 2

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    if-nez v0, :cond_12

    .line 182
    const-string/jumbo v0, "scontext"

    .line 183
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 185
    .end local p0    # "this":Lcom/samsung/android/hardware/context/SemContextManager;
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    monitor-exit p0

    return v0

    .line 180
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_b

    .line 878
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_15

    .line 879
    :cond_b
    const/16 v1, 0x21

    if-ne p2, v1, :cond_15

    .line 880
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    move-object v0, v1

    .line 882
    :cond_15
    :goto_15
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .registers 16
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_e

    .line 853
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    move-object v2, v1

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    move-object v0, v1

    .line 855
    :cond_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .registers 15
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 825
    const/4 v0, 0x0

    .line 826
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_11

    .line 827
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    const/4 v3, 0x1

    move-object v2, v1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    .line 830
    :cond_11
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 767
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const-string v1, "SemContextManager"

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 768
    const-string v0, "SemContextService is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->recoverService()Z

    move-result v0

    if-nez v0, :cond_13

    return v2

    .line 771
    :cond_13
    if-eqz p3, :cond_8c

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_8c

    .line 772
    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-nez v0, :cond_24

    return v2

    .line 774
    :cond_24
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4c

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4c

    const/16 v3, 0x21

    if-eq p2, v3, :cond_4c

    const/16 v3, 0x23

    if-eq p2, v3, :cond_4c

    const/16 v3, 0x27

    if-eq p2, v3, :cond_4c

    const/16 v3, 0x2f

    if-eq p2, v3, :cond_4c

    const/16 v3, 0x33

    if-eq p2, v3, :cond_4c

    const/16 v3, 0x35

    if-eq p2, v3, :cond_4c

    const/16 v3, 0x36

    if-eq p2, v3, :cond_4c

    const/16 v3, 0x38

    if-ne p2, v3, :cond_4b

    goto :goto_4c

    .line 802
    :cond_4b
    return v2

    .line 785
    :cond_4c
    :goto_4c
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v3

    .line 787
    .local v3, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-nez v3, :cond_58

    .line 788
    const-string v0, "  .changeParameters : SemContextListener is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return v2

    .line 793
    :cond_58
    :try_start_58
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->changeParameters(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .changeParameters : listener = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", service="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 795
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_84} :catch_85

    .line 799
    :cond_84
    goto :goto_8b

    .line 797
    :catch_85
    move-exception v2

    .line 798
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in changeParameters: "

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_8b
    return v0

    .line 771
    .end local v3    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_8c
    :goto_8c
    return v2
.end method

.method public getCurrentServiceList()Ljava/lang/String;
    .registers 5

    .line 1156
    const-string v0, ""

    .line 1157
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const-string v2, "SemContextManager"

    if-nez v1, :cond_14

    .line 1158
    const-string v1, "SemContextService is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->recoverService()Z

    move-result v1

    if-nez v1, :cond_14

    return-object v0

    .line 1162
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1}, Lcom/samsung/android/hardware/context/ISemContextService;->getCurrentServiceList()Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1c

    move-object v0, v1

    .line 1165
    goto :goto_22

    .line 1163
    :catch_1c
    move-exception v1

    .line 1164
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in getCurrentServiceList: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1166
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_22
    return-object v0
.end method

.method public getFeatureLevel(I)I
    .registers 4
    .param p1, "service"    # I

    .line 1007
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1010
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const-string v1, "SemContextManager"

    if-nez v0, :cond_12

    .line 705
    const-string v0, "SemContextService is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->recoverService()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 708
    :cond_12
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1c

    goto :goto_59

    .line 711
    :cond_1c
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    .line 712
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-nez v0, :cond_28

    .line 713
    const-string v2, "  .initializeSemContextService : SemContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void

    .line 718
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->initializeService(Landroid/os/IBinder;I)V

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .initializeSemContextService : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 720
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_51} :catch_52

    .line 723
    goto :goto_58

    .line 721
    :catch_52
    move-exception v2

    .line 722
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in initializeSemContextService: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_58
    return-void

    .line 709
    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_59
    :goto_59
    return-void
.end method

.method public isAvailableService(I)Z
    .registers 5
    .param p1, "service"    # I

    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, "res":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    .line 986
    const/4 v1, 0x1

    return v1

    .line 987
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    if-nez v1, :cond_10

    .line 988
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    .line 990
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    if-eqz v1, :cond_30

    .line 991
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 992
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_30

    .line 993
    const-string/jumbo v1, "ro.gps.chip.vendor.slocation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BCM4773_SLOCATION_CORE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 994
    const/4 v0, 0x0

    .line 997
    :cond_30
    return v0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .line 196
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    .line 197
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_b

    .line 425
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_35

    .line 426
    :cond_b
    const/4 v1, 0x6

    if-ne p2, v1, :cond_15

    .line 427
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_35

    .line 428
    :cond_15
    const/16 v1, 0x10

    if-ne p2, v1, :cond_20

    .line 429
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_35

    .line 430
    :cond_20
    const/16 v1, 0x21

    if-ne p2, v1, :cond_2b

    .line 431
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_35

    .line 432
    :cond_2b
    const/16 v1, 0x24

    if-ne p2, v1, :cond_35

    .line 433
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>(I)V

    move-object v0, v1

    .line 435
    :cond_35
    :goto_35
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .registers 16
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_e

    .line 562
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    move-object v2, v1

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    move-object v0, v1

    .line 564
    :cond_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;III)Z
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0xc

    if-ne p2, v1, :cond_b

    .line 508
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    invoke-direct {v1, p3, p4}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>(II)V

    move-object v0, v1

    .line 511
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIII)Z
    .registers 14
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_13

    .line 536
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    const/16 v6, 0x5dc

    const/16 v7, 0x5dc

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    .line 539
    :cond_13
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1c

    if-ne p2, v1, :cond_b

    .line 593
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>(IIII)V

    move-object v0, v1

    .line 595
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIIII)Z
    .registers 16
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x18

    if-ne p2, v1, :cond_12

    .line 631
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    move-object v0, v1

    goto :goto_22

    .line 632
    :cond_12
    const/16 v1, 0x23

    if-ne p2, v1, :cond_22

    .line 633
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    .line 635
    :cond_22
    :goto_22
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILandroid/os/Looper;)Z
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 221
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    .line 222
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .registers 8
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 282
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v1, 0x0

    const-string v2, "SemContextManager"

    if-nez v0, :cond_13

    .line 283
    const-string v0, "SemContextService is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->recoverService()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 287
    :cond_13
    const/16 v0, 0x30

    if-ne p2, v0, :cond_1c

    .line 288
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v0

    return v0

    .line 291
    :cond_1c
    if-eqz p3, :cond_72

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_72

    .line 292
    :cond_25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-nez v0, :cond_2c

    return v1

    .line 294
    :cond_2c
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    .line 296
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-nez v0, :cond_3e

    .line 297
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V

    move-object v0, v1

    .line 298
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v0, p2, p3, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;Ljava/lang/String;)V

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .registerListener : listener = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", service="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_69} :catch_6a

    .line 308
    goto :goto_70

    .line 306
    :catch_6a
    move-exception v1

    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_70
    const/4 v1, 0x1

    return v1

    .line 291
    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_72
    :goto_72
    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 376
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v1, 0x0

    const-string v2, "SemContextManager"

    if-nez v0, :cond_13

    .line 377
    const-string v0, "SemContextService is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->recoverService()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 380
    :cond_13
    if-eqz p3, :cond_68

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_68

    .line 381
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-nez v0, :cond_23

    return v1

    .line 383
    :cond_23
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    .line 385
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-nez v0, :cond_34

    .line 386
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-direct {v1, p0, p1, p4}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V

    move-object v0, v1

    .line 387
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_34
    :try_start_34
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v0, p2, p3, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;Ljava/lang/String;)V

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .registerListener : listener = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", service="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 394
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_5f} :catch_60

    .line 397
    goto :goto_66

    .line 395
    :catch_60
    move-exception v1

    .line 396
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_66
    const/4 v1, 0x1

    return v1

    .line 380
    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_68
    :goto_68
    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[I)Z
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_b

    .line 457
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>([I)V

    move-object v0, v1

    .line 459
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[II)Z
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1e

    if-ne p2, v1, :cond_b

    .line 483
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    invoke-direct {v1, p3, p4}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>([II)V

    move-object v0, v1

    .line 486
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .line 943
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const-string v1, "SemContextManager"

    if-nez v0, :cond_12

    .line 944
    const-string v0, "SemContextService is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->recoverService()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 947
    :cond_12
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 948
    :cond_19
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2a

    const/16 v0, 0x21

    if-eq p2, v0, :cond_2a

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_2a

    .line 951
    const-string v0, "  .requestHistoryData : This service is not supported!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    return-void

    .line 954
    :cond_2a
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-nez v0, :cond_31

    return-void

    .line 956
    :cond_31
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    .line 958
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-eqz v0, :cond_3d

    .line 959
    const-string v2, "  .requestHistoryData : This listener is currently using other services. You should create a new listener to request history data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void

    .line 964
    :cond_3d
    new-instance v2, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Z)V

    move-object v0, v2

    .line 965
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :try_start_49
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v0, p2, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->requestHistoryData(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .requestHistoryData : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 971
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 969
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_74} :catch_75

    .line 974
    goto :goto_7b

    .line 972
    :catch_75
    move-exception v2

    .line 973
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in requestHistoryData: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_7b
    return-void
.end method

.method public requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .line 898
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const-string v1, "SemContextManager"

    if-nez v0, :cond_12

    .line 899
    const-string v0, "SemContextService is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->recoverService()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 902
    :cond_12
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 903
    :cond_19
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3a

    const/16 v0, 0x19

    if-eq p2, v0, :cond_3a

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_3a

    const/16 v0, 0x32

    if-eq p2, v0, :cond_3a

    const/16 v0, 0x33

    if-eq p2, v0, :cond_3a

    const/16 v0, 0x34

    if-eq p2, v0, :cond_3a

    const/16 v0, 0x36

    if-eq p2, v0, :cond_3a

    .line 910
    const-string v0, "  .requestToUpdate : This service is not supported!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void

    .line 914
    :cond_3a
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    .line 916
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-nez v0, :cond_46

    .line 917
    const-string v2, "  .requestToUpdate : SemContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-void

    .line 922
    :cond_46
    :try_start_46
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v0, p2, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->requestToUpdate(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .requestToUpdate : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 925
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 923
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_71} :catch_72

    .line 928
    goto :goto_78

    .line 926
    :catch_72
    move-exception v2

    .line 927
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in requestToUpdate: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_78
    return-void
.end method

.method public setClientInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "clientInfo"    # Ljava/lang/String;

    .line 1144
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 1145
    return-void
.end method

.method public setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .registers 15
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 1073
    const-string/jumbo v0, "gram_data"

    const-string/jumbo v1, "interrupt_gyro"

    const-string v2, "display_status"

    const-string/jumbo v3, "luminance_config_data"

    const-string/jumbo v4, "net_data"

    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const-string v6, "SemContextManager"

    const/4 v7, 0x0

    if-nez v5, :cond_21

    .line 1074
    const-string v5, "SemContextService is null"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->recoverService()Z

    move-result v5

    if-nez v5, :cond_21

    return v7

    .line 1077
    :cond_21
    if-nez p2, :cond_24

    return v7

    .line 1078
    :cond_24
    const/4 v5, 0x0

    .line 1080
    .local v5, "res":Z
    const/16 v8, 0x30

    if-ne p1, v8, :cond_2e

    .line 1081
    invoke-virtual {p2, v8}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v9

    .local v9, "bundle":Landroid/os/Bundle;
    goto :goto_32

    .line 1083
    .end local v9    # "bundle":Landroid/os/Bundle;
    :cond_2e
    invoke-virtual {p2, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v9

    .line 1085
    .restart local v9    # "bundle":Landroid/os/Bundle;
    :goto_32
    if-nez v9, :cond_35

    return v7

    .line 1087
    :cond_35
    const-string v10, "Bundle is not contained key data"

    const/4 v11, 0x1

    sparse-switch p1, :sswitch_data_102

    goto/16 :goto_ff

    .line 1105
    :sswitch_3d
    :try_start_3d
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 1106
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return v7

    .line 1109
    :cond_47
    new-array v0, v11, [B

    .line 1110
    .local v0, "sysfsMode":[B
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sysfs data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, p1, v8, v0}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v1

    .line 1114
    .end local v5    # "res":Z
    .local v1, "res":Z
    move v5, v1

    goto/16 :goto_ff

    .line 1116
    .end local v0    # "sysfsMode":[B
    .end local v1    # "res":Z
    .restart local v5    # "res":Z
    :sswitch_76
    invoke-virtual {v9, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 1117
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    return v7

    .line 1120
    :cond_80
    new-array v0, v11, [B

    .line 1121
    .local v0, "hallSensorStatus":[B
    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hall Sensor Data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/16 v2, 0x2b

    invoke-interface {v1, p1, v2, v0}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v1

    .line 1125
    .end local v5    # "res":Z
    .restart local v1    # "res":Z
    move v5, v1

    goto :goto_ff

    .line 1098
    .end local v0    # "hallSensorStatus":[B
    .end local v1    # "res":Z
    .restart local v5    # "res":Z
    :sswitch_af
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b6

    return v7

    .line 1099
    :cond_b6
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1100
    .local v0, "luminanceConfigData":[B
    if-nez v0, :cond_bd

    return v7

    .line 1101
    :cond_bd
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, p1, v7, v0}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v1

    .line 1103
    .end local v5    # "res":Z
    .restart local v1    # "res":Z
    move v5, v1

    goto :goto_ff

    .line 1089
    .end local v0    # "luminanceConfigData":[B
    .end local v1    # "res":Z
    .restart local v5    # "res":Z
    :sswitch_c5
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f7

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d2

    goto :goto_f7

    .line 1091
    :cond_d2
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1092
    .local v1, "netData":[B
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1093
    .local v0, "gramData":[B
    if-eqz v1, :cond_f6

    if-nez v0, :cond_df

    goto :goto_f6

    .line 1094
    :cond_df
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, p1, v11, v1}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v2

    if-eqz v2, :cond_f2

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 1095
    const/4 v3, 0x2

    invoke-interface {v2, p1, v3, v0}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v2
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_ee} :catch_f8

    if-eqz v2, :cond_f2

    move v7, v11

    goto :goto_f3

    :cond_f2
    nop

    :goto_f3
    move v2, v7

    .line 1096
    .end local v5    # "res":Z
    .local v2, "res":Z
    move v5, v2

    goto :goto_ff

    .line 1093
    .end local v2    # "res":Z
    .restart local v5    # "res":Z
    :cond_f6
    :goto_f6
    return v7

    .line 1090
    .end local v0    # "gramData":[B
    .end local v1    # "netData":[B
    :cond_f7
    :goto_f7
    return v7

    .line 1129
    :catch_f8
    move-exception v0

    .line 1130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException in initializeSemContextService: "

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_100

    .line 1131
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ff
    nop

    .line 1132
    :goto_100
    return v5

    nop

    :sswitch_data_102
    .sparse-switch
        0x10 -> :sswitch_c5
        0x27 -> :sswitch_af
        0x2b -> :sswitch_76
        0x30 -> :sswitch_3d
    .end sparse-switch
.end method

.method public setReferenceData(I[B[B)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1032
    const/4 v0, 0x0

    .line 1033
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    if-eqz p2, :cond_15

    if-nez p3, :cond_6

    goto :goto_15

    .line 1034
    :cond_6
    const/16 v1, 0x10

    if-ne p1, v1, :cond_10

    .line 1035
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>([B[B)V

    move-object v0, v1

    .line 1037
    :cond_10
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 1033
    :cond_15
    :goto_15
    const/4 v1, 0x0

    return v1
.end method

.method public unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;

    .line 644
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 645
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .line 655
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 657
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const-string v1, "SemContextManager"

    if-nez v0, :cond_19

    .line 658
    const-string v0, "SemContextService is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->recoverService()Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 661
    :cond_19
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    .line 662
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-nez v0, :cond_52

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .unregisterListener : SemContextListener is null!, manager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void

    .line 668
    :cond_52
    :try_start_52
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 669
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->clear()V

    .line 670
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 672
    :cond_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .unregisterListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 674
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_86} :catch_87

    .line 677
    goto :goto_8d

    .line 675
    :catch_87
    move-exception v2

    .line 676
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_8d
    return-void
.end method
