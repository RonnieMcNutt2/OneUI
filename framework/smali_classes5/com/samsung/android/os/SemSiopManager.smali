.class public Lcom/samsung/android/os/SemSiopManager;
.super Ljava/lang/Object;
.source "SemSiopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_LIMITERS:Ljava/lang/String; = "SCENARIO_LIMITERS"

.field public static final BUNDLE_KEY_SCENARIO_NAME:Ljava/lang/String; = "SCENARIO_NAME"

.field static final DEBUG:Z = false

.field public static final ERROR_EXISTING_SCENARIO:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_INIT_EXCEPTION:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_NO_LIMITER:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_NULL_SCENARIO:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LIMITER_TYPE_BRIGHTNESS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LIMITER_TYPE_CHARGER_RATIO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LIMITER_TYPE_CPU_FREQUENCY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LIMITER_TYPE_GPU_FREQUENCY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NO_ERROR:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final TAG:Ljava/lang/String;

.field static mContext:Landroid/content/Context;

.field private static mExistingScenarioNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# instance fields
.field private mIsInitialized:Z

.field protected mLimiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;",
            ">;"
        }
    .end annotation
.end field

.field private mScenarioName:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$sfputmService(Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/samsung/android/os/SemSiopManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemSiopManager;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/os/SemSiopManager;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/os/SemSiopManager;->mExistingScenarioNames:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/os/SemSiopManager;->mIsInitialized:Z

    .line 162
    sput-object p1, Lcom/samsung/android/os/SemSiopManager;->mContext:Landroid/content/Context;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/os/SemSiopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/samsung/android/os/SemSiopManager;->mToken:Landroid/os/IBinder;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    .line 166
    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)Lcom/samsung/android/os/SemSiopManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    new-instance v0, Lcom/samsung/android/os/SemSiopManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemSiopManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method

.method private static declared-synchronized getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .registers 4

    const-class v0, Lcom/samsung/android/os/SemSiopManager;

    monitor-enter v0

    .line 418
    :try_start_3
    sget-object v1, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v1, :cond_26

    .line 419
    const-string/jumbo v1, "sdhms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 420
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_26

    .line 421
    invoke-static {v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2a

    .line 422
    if-eqz v2, :cond_26

    .line 424
    :try_start_18
    new-instance v2, Lcom/samsung/android/os/SemSiopManager$1;

    invoke-direct {v2}, Lcom/samsung/android/os/SemSiopManager$1;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22
    .catchall {:try_start_18 .. :try_end_21} :catchall_2a

    .line 432
    goto :goto_26

    .line 430
    :catch_22
    move-exception v2

    .line 431
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_23
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 436
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    sget-object v1, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object v1

    .line 417
    :catchall_2a
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acquireSiop()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    iget-boolean v0, p0, Lcom/samsung/android/os/SemSiopManager;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 314
    return v1

    .line 317
    :cond_6
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v0, :cond_15

    .line 319
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->acquireSiop(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    .line 326
    goto :goto_15

    .line 323
    :catch_10
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    return v1

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public addLimitation(III)Z
    .registers 8
    .param p1, "type"    # I
    .param p2, "temperature"    # I
    .param p3, "limitValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    const/4 v0, 0x0

    if-ltz p1, :cond_63

    const/4 v1, 0x3

    if-le p1, v1, :cond_7

    goto :goto_63

    .line 209
    :cond_7
    const/16 v2, -0xc8

    if-lt p2, v2, :cond_62

    const/16 v2, 0x352

    if-gt p2, v2, :cond_62

    const/4 v2, -0x1

    if-lt p3, v2, :cond_62

    const/4 v2, 0x2

    if-ne p1, v2, :cond_19

    const/16 v2, 0x64

    if-gt p3, v2, :cond_62

    :cond_19
    if-ne p1, v1, :cond_20

    const/16 v1, 0xff

    if-le p3, v1, :cond_20

    goto :goto_62

    .line 218
    :cond_20
    const/4 v0, 0x0

    .line 219
    .local v0, "isAdded":Z
    iget-object v1, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_50

    .line 220
    iget-object v1, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;

    .line 221
    .local v2, "limiter":Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
    invoke-virtual {v2}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->getLimiterType()I

    move-result v3

    if-ne p1, v3, :cond_4f

    .line 222
    iget-object v3, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;

    invoke-virtual {v3, p2, p3}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->addLimitation(II)V

    .line 226
    const/4 v0, 0x1

    .line 228
    .end local v2    # "limiter":Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
    :cond_4f
    goto :goto_31

    .line 230
    :cond_50
    if-nez v0, :cond_60

    .line 231
    new-instance v1, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;

    invoke-direct {v1, p1}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;-><init>(I)V

    .line 232
    .local v1, "limiter":Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
    nop

    .line 233
    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->addLimitation(II)V

    .line 234
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v1    # "limiter":Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
    :cond_60
    const/4 v1, 0x1

    return v1

    .line 215
    .end local v0    # "isAdded":Z
    :cond_62
    :goto_62
    return v0

    .line 207
    :cond_63
    :goto_63
    return v0
.end method

.method public getLimiters()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScenarioName()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    return-object v0
.end method

.method public initializeSiopScenario()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 267
    const/4 v0, -0x1

    return v0

    .line 268
    :cond_6
    sget-object v1, Lcom/samsung/android/os/SemSiopManager;->mExistingScenarioNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 269
    const/4 v0, -0x2

    return v0

    .line 270
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1c

    goto :goto_6f

    .line 274
    :cond_1c
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v0, :cond_26

    .line 275
    invoke-static {}, Lcom/samsung/android/os/SemSiopManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 277
    :cond_26
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v0, :cond_64

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    :try_start_2b
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_41

    .line 280
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->makeAscendingOrder()V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 282
    .end local v0    # "i":I
    :cond_41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, "scenario":Landroid/os/Bundle;
    const-string v2, "SCENARIO_NAME"

    iget-object v3, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "SCENARIO_LIMITERS"

    iget-object v3, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 285
    sget-object v2, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    iget-object v3, p0, Lcom/samsung/android/os/SemSiopManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v0, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->initializeSiopScenario(Landroid/os/Bundle;Landroid/os/IBinder;)V

    .line 286
    iput-boolean v1, p0, Lcom/samsung/android/os/SemSiopManager;->mIsInitialized:Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5d} :catch_5e

    .line 290
    .end local v0    # "scenario":Landroid/os/Bundle;
    goto :goto_64

    .line 287
    :catch_5e
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    const/4 v1, -0x4

    return v1

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_64
    :goto_64
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mExistingScenarioNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_6d

    .line 293
    iget-object v1, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_6d
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_6f
    :goto_6f
    const/4 v0, -0x3

    return v0
.end method

.method public releaseSiop()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    iget-boolean v0, p0, Lcom/samsung/android/os/SemSiopManager;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 351
    return v1

    .line 354
    :cond_6
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v0, :cond_15

    .line 356
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->releaseSiop(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    .line 363
    goto :goto_15

    .line 360
    :catch_10
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    return v1

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public terminateSiopScenario()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    iget-boolean v0, p0, Lcom/samsung/android/os/SemSiopManager;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 389
    return v1

    .line 392
    :cond_6
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v0, :cond_1e

    .line 394
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->terminateSiopScenario(Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mExistingScenarioNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 396
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_19

    .line 404
    :cond_18
    goto :goto_1e

    .line 401
    :catch_19
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    return v1

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method
