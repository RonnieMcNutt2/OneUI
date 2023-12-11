.class public Landroid/hardware/scontext/SContextManager;
.super Lcom/samsung/android/hardware/context/SemContextManager;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsHistoryDataListener(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckHistoryMode(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 120
    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    .line 138
    iput-object p2, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "mainLooper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/os/Looper;)V

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 120
    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    .line 132
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 133
    return-void
.end method

.method private addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;
    .registers 4
    .param p1, "service"    # I

    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    sparse-switch p1, :sswitch_data_aa

    .line 1311
    new-instance v1, Landroid/hardware/scontext/SContextAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_a8

    .line 1307
    :sswitch_c
    new-instance v1, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;-><init>()V

    move-object v0, v1

    .line 1308
    goto/16 :goto_a8

    .line 1303
    :sswitch_14
    new-instance v1, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;-><init>()V

    move-object v0, v1

    .line 1304
    goto/16 :goto_a8

    .line 1299
    :sswitch_1c
    new-instance v1, Landroid/hardware/scontext/SContextSLocationCoreAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;-><init>()V

    move-object v0, v1

    .line 1300
    goto/16 :goto_a8

    .line 1295
    :sswitch_24
    new-instance v1, Landroid/hardware/scontext/SContextExerciseAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextExerciseAttribute;-><init>()V

    move-object v0, v1

    .line 1296
    goto/16 :goto_a8

    .line 1291
    :sswitch_2c
    new-instance v1, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>()V

    move-object v0, v1

    .line 1292
    goto/16 :goto_a8

    .line 1287
    :sswitch_34
    new-instance v1, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>()V

    move-object v0, v1

    .line 1288
    goto/16 :goto_a8

    .line 1283
    :sswitch_3c
    new-instance v1, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>()V

    move-object v0, v1

    .line 1284
    goto/16 :goto_a8

    .line 1279
    :sswitch_44
    new-instance v1, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>()V

    move-object v0, v1

    .line 1280
    goto/16 :goto_a8

    .line 1275
    :sswitch_4c
    new-instance v1, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>()V

    move-object v0, v1

    .line 1276
    goto/16 :goto_a8

    .line 1271
    :sswitch_54
    new-instance v1, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>()V

    move-object v0, v1

    .line 1272
    goto :goto_a8

    .line 1267
    :sswitch_5b
    new-instance v1, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>()V

    move-object v0, v1

    .line 1268
    goto :goto_a8

    .line 1263
    :sswitch_62
    new-instance v1, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>()V

    move-object v0, v1

    .line 1264
    goto :goto_a8

    .line 1259
    :sswitch_69
    new-instance v1, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>()V

    move-object v0, v1

    .line 1260
    goto :goto_a8

    .line 1255
    :sswitch_70
    new-instance v1, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>()V

    move-object v0, v1

    .line 1256
    goto :goto_a8

    .line 1251
    :sswitch_77
    new-instance v1, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>()V

    move-object v0, v1

    .line 1252
    goto :goto_a8

    .line 1247
    :sswitch_7e
    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>()V

    move-object v0, v1

    .line 1248
    goto :goto_a8

    .line 1243
    :sswitch_85
    new-instance v1, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>()V

    move-object v0, v1

    .line 1244
    goto :goto_a8

    .line 1239
    :sswitch_8c
    new-instance v1, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>()V

    move-object v0, v1

    .line 1240
    goto :goto_a8

    .line 1235
    :sswitch_93
    new-instance v1, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>()V

    move-object v0, v1

    .line 1236
    goto :goto_a8

    .line 1231
    :sswitch_9a
    new-instance v1, Landroid/hardware/scontext/SContextPedometerAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>()V

    move-object v0, v1

    .line 1232
    goto :goto_a8

    .line 1227
    :sswitch_a1
    new-instance v1, Landroid/hardware/scontext/SContextApproachAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextApproachAttribute;-><init>()V

    move-object v0, v1

    .line 1228
    nop

    .line 1314
    :goto_a8
    return-object v0

    nop

    :sswitch_data_aa
    .sparse-switch
        0x1 -> :sswitch_a1
        0x2 -> :sswitch_9a
        0x3 -> :sswitch_93
        0x6 -> :sswitch_8c
        0x8 -> :sswitch_85
        0x9 -> :sswitch_7e
        0xc -> :sswitch_77
        0x17 -> :sswitch_70
        0x18 -> :sswitch_69
        0x1b -> :sswitch_62
        0x1c -> :sswitch_5b
        0x1d -> :sswitch_54
        0x1e -> :sswitch_4c
        0x21 -> :sswitch_44
        0x23 -> :sswitch_3c
        0x24 -> :sswitch_34
        0x27 -> :sswitch_2c
        0x28 -> :sswitch_24
        0x2f -> :sswitch_1c
        0x33 -> :sswitch_14
        0x35 -> :sswitch_c
    .end sparse-switch
.end method

.method private checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z
    .registers 8
    .param p1, "scontextevent"    # Landroid/hardware/scontext/SContextEvent;

    .line 1318
    const/4 v0, 0x0

    .line 1319
    .local v0, "res":Z
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1320
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    .line 1321
    .local v2, "type":I
    nop

    .line 1325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSContextChanged() : event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1326
    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_7c

    goto :goto_71

    .line 1333
    :sswitch_2c
    nop

    .line 1334
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getStepLevelMonitorContext()Landroid/hardware/scontext/SContextStepLevelMonitor;

    move-result-object v4

    .line 1335
    .local v4, "stepLevelMonitorContext":Landroid/hardware/scontext/SContextStepLevelMonitor;
    invoke-virtual {v4}, Landroid/hardware/scontext/SContextStepLevelMonitor;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_71

    .line 1336
    const/4 v0, 0x1

    goto :goto_71

    .line 1339
    .end local v4    # "stepLevelMonitorContext":Landroid/hardware/scontext/SContextStepLevelMonitor;
    :sswitch_39
    nop

    .line 1340
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;

    move-result-object v4

    .line 1341
    .local v4, "activityBatchContext":Landroid/hardware/scontext/SContextActivityBatch;
    invoke-virtual {v4}, Landroid/hardware/scontext/SContextActivityBatch;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_71

    .line 1342
    const/4 v0, 0x1

    goto :goto_71

    .line 1345
    .end local v4    # "activityBatchContext":Landroid/hardware/scontext/SContextActivityBatch;
    :sswitch_46
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v3

    .line 1346
    .local v3, "autoRotation":Landroid/hardware/scontext/SContextAutoRotation;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Angle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1347
    goto :goto_71

    .line 1328
    .end local v3    # "autoRotation":Landroid/hardware/scontext/SContextAutoRotation;
    :sswitch_65
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPedometerContext()Landroid/hardware/scontext/SContextPedometer;

    move-result-object v3

    .line 1329
    .local v3, "pedometerContext":Landroid/hardware/scontext/SContextPedometer;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContextPedometer;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_71

    .line 1330
    const/4 v0, 0x1

    .line 1351
    .end local v3    # "pedometerContext":Landroid/hardware/scontext/SContextPedometer;
    :cond_71
    :goto_71
    const-string v3, "SContextManager"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    return v0

    nop

    :sswitch_data_7c
    .sparse-switch
        0x2 -> :sswitch_65
        0x6 -> :sswitch_46
        0x1a -> :sswitch_39
        0x21 -> :sswitch_2c
    .end sparse-switch
.end method

.method private checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .registers 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .line 1213
    const/4 v0, 0x0

    .line 1214
    .local v0, "res":Z
    if-nez p1, :cond_b

    .line 1215
    const-string v1, "SContextManager"

    const-string v2, "Listener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    return v0

    .line 1218
    :cond_b
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    .line 1219
    return v0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1176
    const/4 v0, 0x0

    .line 1177
    .local v0, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-object v0
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .registers 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .line 1187
    if-eqz p1, :cond_2c

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2c

    .line 1191
    :cond_b
    const/4 v0, 0x0

    .line 1193
    .local v0, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1194
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 1196
    .local v2, "delegate":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1197
    move-object v0, v2

    .line 1198
    goto :goto_2b

    .line 1200
    .end local v2    # "delegate":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_2a
    goto :goto_12

    .line 1202
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;>;"
    :cond_2b
    :goto_2b
    return-object v0

    .line 1188
    .end local v0    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .registers 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 960
    const/4 v0, 0x0

    .line 961
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_b

    .line 962
    new-instance v1, Landroid/hardware/scontext/SContextPedometerAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_15

    .line 963
    :cond_b
    const/16 v1, 0x21

    if-ne p2, v1, :cond_15

    .line 964
    new-instance v1, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    move-object v0, v1

    .line 966
    :cond_15
    :goto_15
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 968
    .local v1, "res":Z
    return v1
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .registers 16
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 933
    const/4 v0, 0x0

    .line 934
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_e

    .line 935
    new-instance v1, Landroid/hardware/scontext/SContextPedometerAttribute;

    move-object v2, v1

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    move-object v0, v1

    .line 937
    :cond_e
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 939
    .local v1, "res":Z
    return v1
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .registers 15
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_11

    .line 907
    new-instance v1, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    const/4 v3, 0x1

    move-object v2, v1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    .line 910
    :cond_11
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 912
    .local v1, "res":Z
    return v1
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .registers 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 853
    const/4 v0, 0x0

    if-eqz p3, :cond_47

    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_47

    .line 857
    :cond_a
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 858
    return v0

    .line 861
    :cond_11
    const/4 v1, 0x1

    if-eq p2, v1, :cond_31

    const/4 v2, 0x2

    if-eq p2, v2, :cond_31

    const/16 v2, 0x21

    if-eq p2, v2, :cond_31

    const/16 v2, 0x23

    if-eq p2, v2, :cond_31

    const/16 v2, 0x27

    if-eq p2, v2, :cond_31

    const/16 v2, 0x2f

    if-eq p2, v2, :cond_31

    const/16 v2, 0x33

    if-eq p2, v2, :cond_31

    const/16 v2, 0x35

    if-ne p2, v2, :cond_30

    goto :goto_31

    .line 882
    :cond_30
    return v0

    .line 870
    :cond_31
    :goto_31
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    .line 872
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v2, :cond_3f

    .line 873
    const-string v1, "SContextManager"

    const-string v3, "  .changeParameters : SContextListener is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return v0

    .line 876
    :cond_3f
    invoke-super {p0, v2, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 877
    return v1

    .line 879
    :cond_46
    return v0

    .line 854
    .end local v2    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_47
    :goto_47
    return v0
.end method

.method public getFeatureLevel(I)I
    .registers 3
    .param p1, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1089
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1090
    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getFeatureLevel(I)I

    move-result v0

    return v0

    .line 1092
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_a

    goto :goto_1c

    .line 800
    :cond_a
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    .line 802
    .local v0, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v0, :cond_18

    .line 803
    const-string v1, "SContextManager"

    const-string v2, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void

    .line 807
    :cond_18
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 808
    return-void

    .line 797
    .end local v0    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public isAvailableService(I)Z
    .registers 3
    .param p1, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1075
    const/4 v0, 0x0

    .line 1076
    .local v0, "res":Z
    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    .line 1077
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .registers 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    .line 153
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 155
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .registers 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_b

    .line 421
    new-instance v1, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_35

    .line 422
    :cond_b
    const/4 v1, 0x6

    if-ne p2, v1, :cond_15

    .line 423
    new-instance v1, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_35

    .line 424
    :cond_15
    const/16 v1, 0x10

    if-ne p2, v1, :cond_20

    .line 425
    new-instance v1, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_35

    .line 426
    :cond_20
    const/16 v1, 0x21

    if-ne p2, v1, :cond_2b

    .line 427
    new-instance v1, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_35

    .line 428
    :cond_2b
    const/16 v1, 0x24

    if-ne p2, v1, :cond_35

    .line 429
    new-instance v1, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>(I)V

    move-object v0, v1

    .line 431
    :cond_35
    :goto_35
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 433
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .registers 16
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_e

    .line 574
    new-instance v1, Landroid/hardware/scontext/SContextPedometerAttribute;

    move-object v2, v1

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    move-object v0, v1

    .line 576
    :cond_e
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 578
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .registers 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x8

    if-ne p2, v1, :cond_c

    .line 512
    new-instance v1, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    invoke-direct {v1, p3, p4}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>(II)V

    move-object v0, v1

    goto :goto_21

    .line 513
    :cond_c
    const/16 v1, 0xc

    if-ne p2, v1, :cond_17

    .line 514
    new-instance v1, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    invoke-direct {v1, p3, p4}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>(II)V

    move-object v0, v1

    goto :goto_21

    .line 515
    :cond_17
    const/16 v1, 0x1d

    if-ne p2, v1, :cond_21

    .line 516
    new-instance v1, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    invoke-direct {v1, p3, p4}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>(II)V

    move-object v0, v1

    .line 519
    :cond_21
    :goto_21
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 521
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .registers 16
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # D
    .param p7, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x9

    if-ne p2, v1, :cond_10

    .line 636
    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move v7, p7

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>(IIDI)V

    move-object v0, v1

    .line 638
    :cond_10
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 640
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .registers 14
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_13

    .line 546
    new-instance v1, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    const/16 v6, 0x5dc

    const/16 v7, 0x5dc

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    .line 549
    :cond_13
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 551
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .registers 9
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x1c

    if-ne p2, v1, :cond_b

    .line 669
    new-instance v1, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    invoke-direct {v1, p3, p4, p5, p6}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>(IIII)V

    move-object v0, v1

    .line 671
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 673
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .registers 16
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x18

    if-ne p2, v1, :cond_12

    .line 709
    new-instance v1, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    move-object v0, v1

    goto :goto_22

    .line 710
    :cond_12
    const/16 v1, 0x23

    if-ne p2, v1, :cond_22

    .line 711
    new-instance v1, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    .line 713
    :cond_22
    :goto_22
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 715
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .registers 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x17

    if-ne p2, v1, :cond_b

    .line 604
    new-instance v1, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    invoke-direct {v1, p3, p4, p5}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>(IIZ)V

    move-object v0, v1

    .line 606
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 608
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .registers 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    const/16 v0, 0x30

    if-ne p2, v0, :cond_a

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "res":Z
    invoke-virtual {p0, p2, p3}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    .line 260
    return v0

    .line 263
    .end local v0    # "res":Z
    :cond_a
    const/4 v0, 0x0

    if-nez p3, :cond_e

    .line 264
    return v0

    .line 266
    :cond_e
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_15

    .line 267
    return v0

    .line 271
    :cond_15
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 272
    return v0

    .line 275
    :cond_1c
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 277
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2e

    .line 278
    new-instance v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    move-object v1, v2

    .line 279
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    .line 283
    invoke-super {p0, v1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .registerListener : listener = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", service="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string v2, "SContextManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x1

    return v0

    .line 289
    :cond_63
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z
    .registers 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .param p4, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 368
    return v0

    .line 370
    :cond_4
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_b

    .line 371
    return v0

    .line 375
    :cond_b
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 376
    return v0

    .line 379
    :cond_12
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 381
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_23

    .line 382
    new-instance v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-direct {v2, p0, p1, p4, v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    move-object v1, v2

    .line 383
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    .line 387
    invoke-super {p0, v1, p2, p3, p4}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .registerListener : listener = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", service="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 390
    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    const-string v2, "SContextManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x1

    return v0

    .line 393
    :cond_58
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z
    .registers 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    .line 183
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    .line 185
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .registers 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_b

    .line 455
    new-instance v1, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>([I)V

    move-object v0, v1

    .line 457
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 459
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .registers 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x1e

    if-ne p2, v1, :cond_b

    .line 483
    new-instance v1, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    invoke-direct {v1, p3, p4}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>([II)V

    move-object v0, v1

    .line 486
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 488
    .local v1, "res":Z
    return v1
.end method

.method public requestHistoryData(Landroid/hardware/scontext/SContextListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1027
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1028
    return-void

    .line 1031
    :cond_7
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1a

    const/16 v0, 0x21

    if-eq p2, v0, :cond_1a

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1a

    .line 1034
    const-string v0, "SContextManager"

    const-string v1, "  .requestHistoryData : This service is not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return-void

    .line 1038
    :cond_1a
    const/4 v0, 0x0

    .line 1039
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    .line 1041
    if-nez v0, :cond_22

    .line 1042
    return-void

    .line 1044
    :cond_22
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1045
    return-void

    .line 1049
    :cond_29
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1050
    return-void

    .line 1053
    :cond_30
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 1054
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    .line 1056
    if-nez v1, :cond_45

    .line 1057
    new-instance v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    move-object v1, v2

    .line 1058
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    :cond_45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    .line 1062
    invoke-super {p0, v1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 1064
    return-void
.end method

.method public requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 986
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 987
    return-void

    .line 990
    :cond_7
    const/4 v0, 0x2

    const-string v1, "SContextManager"

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x19

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x1d

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x28

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x32

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x33

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x34

    if-eq p2, v0, :cond_2e

    .line 998
    const-string v0, "  .requestToUpdate : This service is not supported!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return-void

    .line 1002
    :cond_2e
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    .line 1004
    .local v0, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v0, :cond_3a

    .line 1005
    const-string v2, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return-void

    .line 1009
    :cond_3a
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 1010
    return-void
.end method

.method public setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z
    .registers 4
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1160
    const/4 v0, 0x0

    .line 1161
    .local v0, "res":Z
    if-nez p2, :cond_4

    .line 1162
    return v0

    .line 1165
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v0

    .line 1167
    return v0
.end method

.method public setReferenceData(I[B[B)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1113
    const/4 v0, 0x0

    .line 1114
    .local v0, "res":Z
    const/4 v1, 0x0

    .line 1115
    .local v1, "attribute":Landroid/hardware/scontext/SContextAttribute;
    if-eqz p2, :cond_16

    if-nez p3, :cond_7

    goto :goto_16

    .line 1119
    :cond_7
    const/16 v2, 0x10

    if-ne p1, v2, :cond_11

    .line 1120
    new-instance v2, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    invoke-direct {v2, p2, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>([B[B)V

    move-object v1, v2

    .line 1122
    :cond_11
    invoke-virtual {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    .line 1123
    return v0

    .line 1116
    :cond_16
    :goto_16
    return v0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 726
    if-eqz p1, :cond_4b

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v0, :cond_7

    goto :goto_4b

    .line 730
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 731
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 732
    .local v1, "service":I
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    .line 733
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v2, :cond_26

    .line 734
    goto :goto_4a

    .line 736
    :cond_26
    invoke-super {p0, v2, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 737
    invoke-virtual {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->clear()V

    .line 738
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SContextManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    nop

    .line 743
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "service":I
    .end local v2    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_4a
    :goto_4a
    return-void

    .line 727
    :cond_4b
    :goto_4b
    return-void
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 755
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 756
    return-void

    .line 759
    :cond_7
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    .line 761
    .local v0, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const-string v1, "SContextManager"

    if-nez v0, :cond_15

    .line 762
    const-string v2, "  .unregisterListener : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void

    .line 766
    :cond_15
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 767
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

    .line 769
    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 767
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void
.end method
