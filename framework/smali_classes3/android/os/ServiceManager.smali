.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ServiceManager$ServiceNotFoundException;,
        Landroid/os/ServiceManager$Stats;
    }
.end annotation


# static fields
.field private static final GET_SERVICE_LOG_EVERY_CALLS_CORE:I

.field private static final GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

.field private static final GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

.field private static final GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

.field public static final LAZY_SERVICE_NAME:Ljava/lang/String; = "lazy_service"

.field private static final SLOW_LOG_INTERVAL_MS:I = 0x1388

.field private static final STATS_LOG_INTERVAL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ServiceManager"

.field private static _context:Landroid/content/Context;

.field private static final dummyBinder:Landroid/os/Binder;

.field private static lazyServiceManager:Landroid/os/LazyService;

.field private static sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetServiceAccumulatedCallCount:I

.field private static sGetServiceAccumulatedUs:I

.field private static sLastSlowLogActualTime:J

.field private static sLastSlowLogUptime:J

.field private static sLastStatsLogUptime:J

.field private static final sLock:Ljava/lang/Object;

.field private static sServiceManager:Landroid/os/IServiceManager;

.field public static final sStatLogger:Lcom/android/internal/util/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->dummyBinder:Landroid/os/Binder;

    .line 75
    nop

    .line 76
    const-string v0, "debug.servicemanager.slow_call_core_ms"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    .line 82
    nop

    .line 83
    const-string v0, "debug.servicemanager.slow_call_ms"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    .line 88
    nop

    .line 89
    const-string v0, "debug.servicemanager.log_calls_core"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    .line 94
    nop

    .line 95
    const-string v0, "debug.servicemanager.log_calls"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    .line 119
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v1, "getService()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    .line 131
    const/4 v0, 0x0

    sput-object v0, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    .line 132
    sput-object v0, Landroid/os/ServiceManager;->_context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .line 239
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 240
    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z

    .line 254
    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 255
    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z
    .param p3, "dumpPriority"    # I

    .line 272
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 275
    goto :goto_10

    .line 273
    :catch_8
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "creator"    # Landroid/os/IServiceCreator;

    .line 166
    sget-object v0, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    if-nez v0, :cond_e

    .line 167
    sget-object v0, Landroid/os/ServiceManager;->_context:Landroid/content/Context;

    invoke-interface {p1, v0}, Landroid/os/IServiceCreator;->createService(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 168
    return-void

    .line 171
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#LAZY_PRE_ADD#_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/ServiceManager;->dummyBinder:Landroid/os/Binder;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 172
    sget-object v0, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    invoke-virtual {v0, p0, p1}, Landroid/os/LazyService;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V

    .line 173
    return-void
.end method

.method public static addService(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/Class;

    .line 149
    sget-object v0, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    if-nez v0, :cond_1c

    .line 151
    :try_start_4
    new-instance v0, Landroid/os/LazyService$DefaultServiceCreator;

    invoke-direct {v0, p1}, Landroid/os/LazyService$DefaultServiceCreator;-><init>(Ljava/lang/Class;)V

    .line 152
    .local v0, "creator":Landroid/os/LazyService$DefaultServiceCreator;
    sget-object v1, Landroid/os/ServiceManager;->_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/os/LazyService$DefaultServiceCreator;->createService(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_12} :catch_13

    .line 155
    .end local v0    # "creator":Landroid/os/LazyService$DefaultServiceCreator;
    goto :goto_1b

    .line 153
    :catch_13
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ServiceManager"

    const-string v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1b
    return-void

    .line 159
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#LAZY_PRE_ADD#_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/ServiceManager;->dummyBinder:Landroid/os/Binder;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 160
    sget-object v0, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    invoke-virtual {v0, p0, p1}, Landroid/os/LazyService;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    .line 161
    return-void
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 286
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 287
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_b

    .line 288
    return-object v0

    .line 290
    :cond_b
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v1

    .line 292
    .end local v0    # "service":Landroid/os/IBinder;
    :catch_18
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in checkService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "iface"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 326
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 327
    :catch_9
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in getDeclaredInstances"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getIServiceManager()Landroid/os/IServiceManager;
    .registers 1

    .line 182
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v0, :cond_5

    .line 183
    return-object v0

    .line 188
    :cond_5
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 189
    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 202
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 203
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_b

    .line 204
    return-object v0

    .line 206
    :cond_b
    invoke-static {p0}, Landroid/os/ServiceManager;->rawGetService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 208
    .end local v0    # "service":Landroid/os/IBinder;
    :catch_14
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in getService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;
    .registers 3

    .line 399
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 400
    :catch_9
    move-exception v0

    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in getServiceDebugInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 221
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 222
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_7

    .line 223
    return-object v0

    .line 225
    :cond_7
    new-instance v1, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v1, p0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static initServiceCache(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 415
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 418
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 419
    return-void

    .line 416
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setServiceCache may only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isDeclared(Ljava/lang/String;)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 306
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 307
    :catch_9
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in isDeclared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    const/4 v1, 0x0

    return v1
.end method

.method public static listServices()[Ljava/lang/String;
    .registers 3

    .line 385
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 386
    :catch_b
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    const/4 v1, 0x0

    return-object v1
.end method

.method private static rawGetService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 20
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    move-object/from16 v1, p0

    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    .line 437
    .local v2, "start":J
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 439
    .local v4, "binder":Landroid/os/IBinder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 441
    .local v6, "time":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 442
    .local v7, "myUid":I
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v8

    .line 444
    .local v8, "isCore":Z
    if-eqz v8, :cond_23

    .line 445
    sget-wide v9, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    goto :goto_25

    .line 446
    :cond_23
    sget-wide v9, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    :goto_25
    nop

    .line 448
    .local v9, "slowThreshold":J
    sget-object v11, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    monitor-enter v11

    .line 449
    :try_start_29
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    add-int/2addr v0, v6

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 450
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 455
    .local v12, "nowUptime":J
    int-to-long v14, v6

    cmp-long v0, v14, v9

    const-wide/16 v14, 0x1388

    if-ltz v0, :cond_58

    .line 459
    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    add-long v16, v16, v14

    cmp-long v0, v12, v16

    if-gtz v0, :cond_4e

    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    int-to-long v14, v6

    cmp-long v0, v16, v14

    if-gez v0, :cond_58

    .line 461
    :cond_4e
    div-int/lit16 v0, v6, 0x3e8

    invoke-static {v0, v1}, Landroid/os/EventLogTags;->writeServiceManagerSlow(ILjava/lang/String;)V

    .line 463
    sput-wide v12, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    .line 464
    int-to-long v14, v6

    sput-wide v14, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    .line 470
    :cond_58
    if-eqz v8, :cond_5d

    .line 471
    sget v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    goto :goto_5f

    .line 472
    :cond_5d
    sget v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    :goto_5f
    nop

    .line 474
    .local v0, "logInterval":I
    sget v14, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    if-lt v14, v0, :cond_82

    sget-wide v15, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    const-wide/16 v17, 0x1388

    add-long v17, v15, v17

    cmp-long v17, v12, v17

    if-ltz v17, :cond_82

    .line 477
    sget v5, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    div-int/lit16 v5, v5, 0x3e8

    move/from16 v18, v0

    .end local v0    # "logInterval":I
    .local v18, "logInterval":I
    sub-long v0, v12, v15

    long-to-int v0, v0

    invoke-static {v14, v5, v0}, Landroid/os/EventLogTags;->writeServiceManagerStats(III)V

    .line 481
    const/4 v0, 0x0

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 482
    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 483
    sput-wide v12, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    goto :goto_84

    .line 474
    .end local v18    # "logInterval":I
    .restart local v0    # "logInterval":I
    :cond_82
    move/from16 v18, v0

    .line 485
    .end local v0    # "logInterval":I
    .end local v12    # "nowUptime":J
    :goto_84
    monitor-exit v11

    .line 486
    return-object v4

    .line 485
    :catchall_86
    move-exception v0

    monitor-exit v11
    :try_end_88
    .catchall {:try_start_29 .. :try_end_88} :catchall_86

    throw v0
.end method

.method public static registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Landroid/os/IServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 374
    return-void
.end method

.method public static waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 362
    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static waitForService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 343
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForServiceNative(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private static native waitForServiceNative(Ljava/lang/String;)Landroid/os/IBinder;
.end method


# virtual methods
.method public initLazyServiceManager(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    sput-object p1, Landroid/os/ServiceManager;->_context:Landroid/content/Context;

    .line 138
    new-instance v0, Landroid/os/LazyService;

    invoke-direct {v0, p1}, Landroid/os/LazyService;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    .line 140
    :try_start_9
    const-string/jumbo v1, "lazy_service"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    .line 144
    goto :goto_1b

    .line 141
    :catchall_10
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ServiceManager"

    const-string v2, "Failure starting Lazy Service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const/4 v1, 0x0

    sput-object v1, Landroid/os/ServiceManager;->lazyServiceManager:Landroid/os/LazyService;

    .line 145
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1b
    return-void
.end method
