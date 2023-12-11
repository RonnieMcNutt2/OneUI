.class public Landroid/hardware/input/InputDeviceSensorManager;
.super Ljava/lang/Object;
.source "InputDeviceSensorManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;,
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;,
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_SENSOR_ACCURACY_CHANGED:I = 0x1

.field private static final MSG_SENSOR_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "InputDeviceSensorManager"


# instance fields
.field private mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final mInputSensorEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputSensorLock:Ljava/lang/Object;

.field private mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

.field private final mSensorHandler:Landroid/os/Handler;

.field private final mSensorThread:Landroid/os/HandlerThread;

.field private final mSensors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetFullSensorListForDevice(Landroid/hardware/input/InputDeviceSensorManager;I)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->getFullSensorListForDevice(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSensorForInputDevice(Landroid/hardware/input/InputDeviceSensorManager;II)Landroid/hardware/Sensor;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorForInputDevice(II)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monInputSensorAccuracyChanged(Landroid/hardware/input/InputDeviceSensorManager;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputSensorAccuracyChanged(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monInputSensorChanged(Landroid/hardware/input/InputDeviceSensorManager;IIIJ[F)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/input/InputDeviceSensorManager;->onInputSensorChanged(IIIJ[F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/hardware/input/InputDeviceSensorManager;->registerListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->unregisterListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->sensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 4
    .param p1, "inputManagerGlobal"    # Landroid/hardware/input/InputManagerGlobal;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 74
    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SensorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorHandler:Landroid/os/Handler;

    .line 81
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 83
    invoke-direct {p0}, Landroid/hardware/input/InputDeviceSensorManager;->initializeSensors()V

    .line 84
    return-void
.end method

.method private findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 185
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getListener()Landroid/hardware/SensorEventListener;

    move-result-object v1

    if-ne v1, p1, :cond_18

    .line 186
    return v0

    .line 184
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "i":I
    :cond_1b
    const/high16 v0, -0x80000000

    return v0
.end method

.method private flush(Landroid/hardware/SensorEventListener;)Z
    .registers 10
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 549
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v1

    .line 551
    .local v1, "idx":I
    const/4 v2, 0x0

    if-gez v1, :cond_c

    .line 552
    monitor-exit v0

    return v2

    .line 554
    :cond_c
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 555
    .local v4, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    .line 556
    .local v5, "deviceId":I
    iget-object v6, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/hardware/input/InputManagerGlobal;->flushSensor(II)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 557
    monitor-exit v0

    return v2

    .line 559
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    .end local v5    # "deviceId":I
    :cond_3a
    goto :goto_1c

    .line 560
    :cond_3b
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 561
    .end local v1    # "idx":I
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private getFullSensorListForDevice(I)Ljava/util/List;
    .registers 9
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_8
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 410
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/Sensor;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 411
    .local v5, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getId()I

    move-result v6

    if-ne v6, p1, :cond_3d

    .line 415
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    :cond_3d
    goto :goto_28

    .line 418
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/Sensor;>;>;"
    :cond_3e
    goto :goto_12

    .line 419
    :cond_3f
    monitor-exit v1

    .line 420
    return-object v0

    .line 419
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw v2
.end method

.method private getInputDeviceSensorLocked(II)Landroid/hardware/Sensor;
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 173
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 174
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 175
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, p2, :cond_23

    .line 176
    return-object v2

    .line 178
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_23
    goto :goto_10

    .line 179
    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSensorForInputDevice(II)Landroid/hardware/Sensor;
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "type"    # I

    .line 388
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 390
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/Sensor;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 391
    .local v4, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    if-ne v5, p1, :cond_3d

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, p2, :cond_3d

    .line 395
    monitor-exit v0

    return-object v4

    .line 397
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_3d
    goto :goto_23

    .line 398
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/Sensor;>;>;"
    :cond_3e
    goto :goto_d

    .line 399
    :cond_3f
    monitor-exit v0

    .line 400
    const/4 v0, 0x0

    return-object v0

    .line 399
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private initializeSensors()V
    .registers 5

    .line 155
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 157
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object v1

    .line 158
    .local v1, "deviceIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    .line 159
    aget v3, v1, v2

    .line 160
    .local v3, "deviceId":I
    invoke-direct {p0, v3}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    .line 158
    .end local v3    # "deviceId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 162
    .end local v1    # "deviceIds":[I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private onInputSensorAccuracyChanged(III)V
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "accuracy"    # I

    .line 225
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 227
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 229
    .local v2, "listener":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    invoke-virtual {v2, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 230
    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->sendSensorAccuracyChanged(III)V

    .line 226
    .end local v2    # "listener":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 233
    .end local v1    # "i":I
    :cond_20
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private onInputSensorChanged(IIIJ[F)V
    .registers 15
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J
    .param p6, "values"    # [F

    .line 198
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->getInputDeviceSensorLocked(II)Landroid/hardware/Sensor;

    move-result-object v1

    .line 200
    .local v1, "sensor":Landroid/hardware/Sensor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 201
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 203
    .local v3, "listener":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    invoke-virtual {v3, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 204
    invoke-static {v3, v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->-$$Nest$mgetSensorEvent(Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;

    move-result-object v4

    .line 205
    .local v4, "event":Landroid/hardware/SensorEvent;
    if-nez v4, :cond_2d

    .line 206
    const-string v5, "InputDeviceSensorManager"

    const-string v6, "Failed to get SensorEvent."

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    monitor-exit v0

    return-void

    .line 209
    :cond_2d
    iput-object v1, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 210
    iput p3, v4, Landroid/hardware/SensorEvent;->accuracy:I

    .line 211
    iput-wide p4, v4, Landroid/hardware/SensorEvent;->timestamp:J

    .line 212
    iget-object v5, v4, Landroid/hardware/SensorEvent;->values:[F

    iget-object v6, v4, Landroid/hardware/SensorEvent;->values:[F

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {p6, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    invoke-virtual {v3, v4}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->sendSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 200
    .end local v3    # "listener":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    .end local v4    # "event":Landroid/hardware/SensorEvent;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 217
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    .end local v2    # "i":I
    :cond_42
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method private populateSensorsForInputDeviceLocked(I[Landroid/hardware/input/InputSensorInfo;)V
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sensorInfos"    # [Landroid/hardware/input/InputSensorInfo;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 145
    new-instance v2, Landroid/hardware/Sensor;

    aget-object v3, p2, v1

    invoke-direct {v2, v3}, Landroid/hardware/Sensor;-><init>(Landroid/hardware/input/InputSensorInfo;)V

    .line 149
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 151
    .end local v1    # "i":I
    :cond_16
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private registerListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 15
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .line 430
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 431
    const-string v1, "InputDeviceSensorManager"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v0

    .line 435
    :cond_b
    if-nez p2, :cond_15

    .line 436
    const-string v1, "InputDeviceSensorManager"

    const-string v2, "sensor is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v0

    .line 441
    :cond_15
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 442
    const-string v1, "InputDeviceSensorManager"

    const-string v2, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v0

    .line 445
    :cond_24
    if-ltz p4, :cond_de

    if-gez p3, :cond_2a

    goto/16 :goto_de

    .line 450
    :cond_2a
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorForInputDevice(II)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_8e

    .line 451
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    :try_start_3b
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v2

    .line 453
    .local v2, "deviceId":I
    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 454
    .local v3, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v3}, Landroid/view/InputDevice;->hasSensor()Z

    move-result v4

    if-nez v4, :cond_63

    .line 455
    const-string v4, "InputDeviceSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The device doesn\'t have the sensor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    monitor-exit v1

    return v0

    .line 458
    :cond_63
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v2, v5, p3, p4}, Landroid/hardware/input/InputManagerGlobal;->enableSensor(IIII)Z

    move-result v4

    if-nez v4, :cond_89

    .line 460
    const-string v4, "InputDeviceSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t enable the sensor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    monitor-exit v1

    return v0

    .line 463
    .end local v2    # "deviceId":I
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_89
    monitor-exit v1

    goto :goto_8e

    :catchall_8b
    move-exception v0

    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_3b .. :try_end_8d} :catchall_8b

    throw v0

    .line 466
    :cond_8e
    :goto_8e
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_91
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    if-nez v2, :cond_ae

    .line 469
    new-instance v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;-><init>(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener-IA;)V

    iput-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    .line 470
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v3, v2}, Landroid/hardware/input/InputManagerGlobal;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 471
    const-string v2, "InputDeviceSensorManager"

    const-string v3, "Failed registering the sensor listener"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    monitor-exit v1

    return v0

    .line 476
    :cond_ae
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v0

    .line 477
    .local v0, "idx":I
    if-gez v0, :cond_cd

    .line 478
    new-instance v8, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 481
    if-nez p5, :cond_bc

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorHandler:Landroid/os/Handler;

    move-object v7, v2

    goto :goto_bd

    :cond_bc
    move-object v7, p5

    :goto_bd
    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;-><init>(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)V

    move-object v2, v8

    .line 482
    .local v2, "d":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    nop

    .end local v2    # "d":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    goto :goto_d8

    .line 485
    :cond_cd
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v2, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 487
    .end local v0    # "idx":I
    :goto_d8
    monitor-exit v1

    .line 489
    const/4 v0, 0x1

    return v0

    .line 487
    :catchall_db
    move-exception v0

    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_91 .. :try_end_dd} :catchall_db

    throw v0

    .line 446
    :cond_de
    :goto_de
    const-string v1, "InputDeviceSensorManager"

    const-string v2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return v0
.end method

.method private static sensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .registers 4
    .param p0, "lhs"    # Landroid/hardware/Sensor;
    .param p1, "rhs"    # Landroid/hardware/Sensor;

    .line 136
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private unregisterListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 16
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 496
    if-eqz p1, :cond_ae

    .line 499
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v1

    .line 503
    .local v1, "idx":I
    if-ltz v1, :cond_a2

    .line 504
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 505
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 506
    .local v2, "delegate":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 508
    .local v3, "sensorsRegistered":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual {v2, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)V

    .line 509
    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 511
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 513
    .end local v2    # "delegate":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    :cond_2a
    nop

    .line 518
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    if-eqz v2, :cond_41

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_41

    .line 519
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    invoke-virtual {v2, v4}, Landroid/hardware/input/InputManagerGlobal;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    .line 520
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    .line 523
    :cond_41
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 524
    .local v4, "s":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    .line 525
    .local v5, "deviceId":I
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    .line 527
    .local v6, "sensorType":I
    const/4 v7, 0x0

    .line 528
    .local v7, "enableSensor":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5b
    iget-object v9, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_98

    .line 529
    iget-object v9, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    .line 530
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    .line 531
    .local v9, "delegate":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    invoke-virtual {v9, v5, v6}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 532
    const/4 v7, 0x1

    .line 533
    const-string v10, "InputDeviceSensorManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " still uses sensor "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    goto :goto_98

    .line 528
    .end local v9    # "delegate":Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
    :cond_95
    add-int/lit8 v8, v8, 0x1

    goto :goto_5b

    .line 538
    .end local v8    # "i":I
    :cond_98
    :goto_98
    if-nez v7, :cond_9f

    .line 542
    iget-object v8, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v8, v5, v6}, Landroid/hardware/input/InputManagerGlobal;->disableSensor(II)V

    .line 544
    .end local v4    # "s":Landroid/hardware/Sensor;
    .end local v5    # "deviceId":I
    .end local v6    # "sensorType":I
    .end local v7    # "enableSensor":Z
    :cond_9f
    goto :goto_45

    .line 545
    .end local v1    # "idx":I
    .end local v3    # "sensorsRegistered":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_a0
    monitor-exit v0

    .line 546
    return-void

    .line 514
    .restart local v1    # "idx":I
    :cond_a2
    const-string v2, "InputDeviceSensorManager"

    const-string v3, "Listener is not registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    monitor-exit v0

    return-void

    .line 545
    .end local v1    # "idx":I
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_5 .. :try_end_ad} :catchall_ab

    throw v1

    .line 497
    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateInputDeviceSensorInfoLocked(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 100
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 101
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/InputDevice;->hasSensor()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 102
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 103
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManagerGlobal;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v1

    .line 104
    .local v1, "sensorInfos":[Landroid/hardware/input/InputSensorInfo;
    invoke-direct {p0, p1, v1}, Landroid/hardware/input/InputDeviceSensorManager;->populateSensorsForInputDeviceLocked(I[Landroid/hardware/input/InputSensorInfo;)V

    .line 106
    .end local v1    # "sensorInfos":[Landroid/hardware/input/InputSensorInfo;
    :cond_15
    return-void
.end method


# virtual methods
.method getSensorManager(I)Landroid/hardware/SensorManager;
    .registers 3
    .param p1, "deviceId"    # I

    .line 93
    new-instance v0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;-><init>(Landroid/hardware/input/InputDeviceSensorManager;I)V

    return-object v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 6
    .param p1, "deviceId"    # I

    .line 110
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 112
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    goto :goto_31

    .line 114
    :cond_13
    const-string v1, "InputDeviceSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'device added\' notification for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but it is already in the list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_31
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public onInputDeviceChanged(I)V
    .registers 5
    .param p1, "deviceId"    # I

    .line 129
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onInputDeviceRemoved(I)V
    .registers 5
    .param p1, "deviceId"    # I

    .line 122
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
