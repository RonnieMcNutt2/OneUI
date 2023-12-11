.class public Landroid/app/UiModeManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;,
        Landroid/app/UiModeManager$Globals;,
        Landroid/app/UiModeManager$InnerListener;,
        Landroid/app/UiModeManager$OnProjectionStateChangedListener;,
        Landroid/app/UiModeManager$ContrastChangeListener;,
        Landroid/app/UiModeManager$ProjectionType;,
        Landroid/app/UiModeManager$DisableCarMode;,
        Landroid/app/UiModeManager$EnableCarMode;,
        Landroid/app/UiModeManager$ContrastUtils;,
        Landroid/app/UiModeManager$NightModeCustomReturnType;,
        Landroid/app/UiModeManager$NightModeCustomType;,
        Landroid/app/UiModeManager$NightMode;
    }
.end annotation


# static fields
.field public static ACTION_ENTER_CAR_MODE:Ljava/lang/String; = null

.field public static final ACTION_ENTER_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_CAR_MODE:Ljava/lang/String; = null

.field public static final ACTION_EXIT_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.EXIT_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field public static final DEFAULT_PRIORITY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DISABLE_CAR_MODE_ALL_PRIORITIES:I = 0x2

.field public static final DISABLE_CAR_MODE_GO_HOME:I = 0x1

.field public static final ENABLE_CAR_MODE_ALLOW_SLEEP:I = 0x2

.field public static final ENABLE_CAR_MODE_GO_CAR_HOME:I = 0x1

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.app.extra.CALLING_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PRIORITY:Ljava/lang/String; = "android.app.extra.PRIORITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MODE_NIGHT_AUTO:I = 0x0

.field public static final MODE_NIGHT_CUSTOM:I = 0x3

.field public static final MODE_NIGHT_CUSTOM_TYPE_BEDTIME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MODE_NIGHT_CUSTOM_TYPE_SCHEDULE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MODE_NIGHT_CUSTOM_TYPE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MODE_NIGHT_NO:I = 0x1

.field public static final MODE_NIGHT_YES:I = 0x2

.field public static final PROJECTION_TYPE_ALL:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROJECTION_TYPE_AUTOMOTIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROJECTION_TYPE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String; = null

.field public static SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String; = null

.field public static SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String; = null

.field public static SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String; = null

.field public static final SEM_DISPLAY_TYPE_DUAL:I = 0x66

.field public static final SEM_DISPLAY_TYPE_STANDALONE:I = 0x65

.field public static final SEM_EXTRA_DISPLAY_TYPE:Ljava/lang/String; = "android.app.extra.DISPLAY_TYPE"

.field private static final TAG:Ljava/lang/String; = "UiModeManager"

.field private static sGlobals:Landroid/app/UiModeManager$Globals;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

.field private final mProjectionStateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListener;",
            "Landroid/app/UiModeManager$InnerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 144
    const-string v0, "android.app.action.ENTER_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 177
    const-string v0, "android.app.action.EXIT_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 218
    const-string v0, "android.app.action.ENTER_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 225
    const-string v0, "android.app.action.EXIT_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 233
    const-string v0, "android.app.action.ENTER_KNOX_DESKTOP_MODE"

    sput-object v0, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    .line 241
    const-string v0, "android.app.action.EXIT_KNOX_DESKTOP_MODE"

    sput-object v0, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    .line 248
    const-string v0, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    sput-object v0, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    .line 256
    const-string v0, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    sput-object v0, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/UiModeManager;-><init>(Landroid/content/Context;)V

    .line 538
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    .line 402
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    .line 410
    new-instance v1, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;-><init>(Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager-IA;)V

    iput-object v1, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    .line 541
    const-string/jumbo v1, "uimode"

    .line 542
    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 541
    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    .line 543
    .local v1, "service":Landroid/app/IUiModeManager;
    iput-object p1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 544
    if-nez v1, :cond_29

    return-void

    .line 545
    :cond_29
    monitor-enter v0

    .line 546
    :try_start_2a
    sget-object v2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-nez v2, :cond_35

    new-instance v2, Landroid/app/UiModeManager$Globals;

    invoke-direct {v2, v1}, Landroid/app/UiModeManager$Globals;-><init>(Landroid/app/IUiModeManager;)V

    sput-object v2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    .line 547
    :cond_35
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_37
    move-exception v2

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_37

    throw v2
.end method


# virtual methods
.method public addContrastChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/UiModeManager$ContrastChangeListener;

    .line 1393
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0, p2, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$maddContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V

    .line 1396
    return-void
.end method

.method public addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .registers 8
    .param p1, "projectionType"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1252
    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1253
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1254
    const-string v1, "UiModeManager"

    const-string v2, "Attempted to add listener that was already added."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    monitor-exit v0

    return-void

    .line 1257
    :cond_14
    sget-object v1, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v1, :cond_3a

    .line 1258
    new-instance v1, Landroid/app/UiModeManager$InnerListener;

    iget-object v2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/app/UiModeManager$InnerListener;-><init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;Landroid/app/UiModeManager$InnerListener-IA;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_3c

    .line 1261
    .local v1, "innerListener":Landroid/app/UiModeManager$InnerListener;
    :try_start_20
    sget-object v2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v2}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/app/IUiModeManager;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 1262
    iget-object v2, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2e} :catch_2f
    .catchall {:try_start_20 .. :try_end_2e} :catchall_3c

    .line 1266
    goto :goto_3a

    .line 1263
    :catch_2f
    move-exception v2

    .line 1264
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_30
    iget-object v3, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {v3, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    .line 1265
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/UiModeManager;
    .end local p1    # "projectionType":I
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    throw v3

    .line 1268
    .end local v1    # "innerListener":Landroid/app/UiModeManager$InnerListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/UiModeManager;
    .restart local p1    # "projectionType":I
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    :cond_3a
    :goto_3a
    monitor-exit v0

    .line 1269
    return-void

    .line 1268
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public disableCarMode(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 688
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1c

    .line 690
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 691
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 690
    :goto_12
    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->disableCarModeByCallingPackage(ILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    .line 694
    goto :goto_1c

    .line 692
    :catch_16
    move-exception v0

    .line 693
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 696
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public enableCarMode(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/UiModeManager;->enableCarMode(II)V

    .line 586
    return-void
.end method

.method public enableCarMode(II)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 636
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1c

    .line 638
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 639
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 638
    :goto_12
    invoke-interface {v0, p2, p1, v1}, Landroid/app/IUiModeManager;->enableCarMode(IILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    .line 642
    goto :goto_1c

    .line 640
    :catch_16
    move-exception v0

    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 644
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public getActiveProjectionTypes()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1227
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 1229
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getActiveProjectionTypes()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 1230
    :catch_d
    move-exception v0

    .line 1231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1234
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getContrast()F
    .registers 2

    .line 1381
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$mgetContrast(Landroid/app/UiModeManager$Globals;)F

    move-result v0

    return v0
.end method

.method public getCurrentModeType()I
    .registers 3

    .line 709
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 711
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 712
    :catch_d
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 716
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public getCustomNightModeEnd()Ljava/time/LocalTime;
    .registers 5

    .line 1072
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1a

    .line 1074
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return-object v0

    .line 1075
    :catch_14
    move-exception v0

    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1079
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public getCustomNightModeStart()Ljava/time/LocalTime;
    .registers 5

    .line 1037
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1a

    .line 1039
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return-object v0

    .line 1040
    :catch_14
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1044
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public getNightMode()I
    .registers 3

    .line 938
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 940
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 941
    :catch_d
    move-exception v0

    .line 942
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 945
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public getNightModeCustomType()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 808
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 810
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightModeCustomType()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 811
    :catch_d
    move-exception v0

    .line 812
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 815
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public getNightPriorityAllowedPackagesFromScpm()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 911
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 913
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightPriorityAllowedPackagesFromScpm()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    .line 914
    :catch_d
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 918
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageNightMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 882
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_17

    .line 884
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 885
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 884
    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->getPackageNightMode(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return v0

    .line 886
    :catch_11
    move-exception v0

    .line 887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 890
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public getProjectingPackages(I)Ljava/util/Set;
    .registers 4
    .param p1, "projectionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1209
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1a

    .line 1211
    :try_start_4
    new-instance v0, Landroid/util/ArraySet;

    sget-object v1, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v1}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->getProjectingPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return-object v0

    .line 1212
    :catch_14
    move-exception v0

    .line 1213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1216
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isNightModeLocked()Z
    .registers 3

    .line 977
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 979
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->isNightModeLocked()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 980
    :catch_d
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 984
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public isUiModeLocked()Z
    .registers 3

    .line 955
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 957
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->isUiModeLocked()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 958
    :catch_d
    move-exception v0

    .line 959
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 962
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public releaseProjection(I)Z
    .registers 4
    .param p1, "projectionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1186
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_19

    .line 1188
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->releaseProjection(ILjava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return v0

    .line 1189
    :catch_13
    move-exception v0

    .line 1190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1193
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/UiModeManager$ContrastChangeListener;

    .line 1405
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mremoveContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;)V

    .line 1407
    return-void
.end method

.method public removeOnProjectionStateChangedListener(Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1282
    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager$InnerListener;

    .line 1284
    .local v1, "innerListener":Landroid/app/UiModeManager$InnerListener;
    if-nez v1, :cond_16

    .line 1285
    const-string v2, "UiModeManager"

    const-string v3, "Attempted to remove listener that was not added."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    monitor-exit v0

    return-void

    .line 1288
    :cond_16
    sget-object v2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_34

    if-eqz v2, :cond_28

    .line 1290
    :try_start_1a
    invoke-static {v2}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IUiModeManager;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22
    .catchall {:try_start_1a .. :try_end_21} :catchall_34

    .line 1293
    goto :goto_28

    .line 1291
    :catch_22
    move-exception v2

    .line 1292
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_23
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/UiModeManager;
    .end local p1    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    throw v3

    .line 1295
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/UiModeManager;
    .restart local p1    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    :cond_28
    :goto_28
    iget-object v2, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    iget-object v2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {v2, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    .line 1297
    .end local v1    # "innerListener":Landroid/app/UiModeManager$InnerListener;
    monitor-exit v0

    .line 1298
    return-void

    .line 1297
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public requestProjection(I)Z
    .registers 5
    .param p1, "projectionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1157
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1e

    .line 1159
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object v2, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 1160
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1159
    invoke-interface {v0, v1, p1, v2}, Landroid/app/IUiModeManager;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    return v0

    .line 1161
    :catch_18
    move-exception v0

    .line 1162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1165
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setApplicationNightMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 847
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_12

    .line 849
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setApplicationNightMode(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 852
    goto :goto_12

    .line 850
    :catch_c
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 854
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public setCustomNightModeEnd(Ljava/time/LocalTime;)V
    .registers 7
    .param p1, "time"    # Ljava/time/LocalTime;

    .line 1090
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_19

    .line 1092
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    .line 1095
    goto :goto_19

    .line 1093
    :catch_13
    move-exception v0

    .line 1094
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1097
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    return-void
.end method

.method public setCustomNightModeStart(Ljava/time/LocalTime;)V
    .registers 7
    .param p1, "time"    # Ljava/time/LocalTime;

    .line 1055
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_19

    .line 1057
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    .line 1060
    goto :goto_19

    .line 1058
    :catch_13
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1062
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    return-void
.end method

.method public setNightMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNightMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 759
    const/4 v1, 0x7

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    const-string v1, "UiModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_3a

    .line 764
    :try_start_2c
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightMode(I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    .line 767
    goto :goto_3a

    .line 765
    :catch_34
    move-exception v0

    .line 766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 769
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    return-void
.end method

.method public setNightModeActivated(Z)Z
    .registers 4
    .param p1, "active"    # Z

    .line 1019
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 1021
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightModeActivated(Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 1022
    :catch_d
    move-exception v0

    .line 1023
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1026
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public setNightModeActivatedForCustomMode(IZ)Z
    .registers 5
    .param p1, "nightModeCustomType"    # I
    .param p2, "active"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1001
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 1003
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IUiModeManager;->setNightModeActivatedForCustomMode(IZ)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 1004
    :catch_d
    move-exception v0

    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1008
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public setNightModeCustomType(I)V
    .registers 4
    .param p1, "nightModeCustomType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNightModeCustomType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 786
    const/4 v1, 0x7

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    const-string v1, "UiModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_3a

    .line 791
    :try_start_2c
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightModeCustomType(I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    .line 794
    goto :goto_3a

    .line 792
    :catch_34
    move-exception v0

    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 796
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    return-void
.end method

.method public setNightPriorityAllowedPackagesFromScpm(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 898
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_12

    .line 900
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightPriorityAllowedPackagesFromScpm(Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 903
    goto :goto_12

    .line 901
    :catch_c
    move-exception v0

    .line 902
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 905
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public setPackageNightMode(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 868
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_16

    .line 870
    :try_start_4
    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 871
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 870
    invoke-interface {v0, p1, v1, p2}, Landroid/app/IUiModeManager;->setPackageNightMode(Ljava/lang/String;II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 874
    goto :goto_16

    .line 872
    :catch_10
    move-exception v0

    .line 873
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 876
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method
