.class public abstract Landroid/view/OrientationEventListener;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationEventListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICEINFO_COVER_DISPLAY_ON:I = 0x1

.field private static final DEVICEINFO_FOLDER_OPEN:I = 0x0

.field private static final DEVICEINFO_TABLE_MODE:I = 0x1

.field private static final DEVICEINFO_TYPE_FLIP_COVERDISP:I = 0x3

.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OrientationEventListener"

.field private static final localLOGV:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceInfoListener:Landroid/hardware/SensorEventListener;

.field private mDeviceInfoSensor:Landroid/hardware/Sensor;

.field private mEnabled:Z

.field private mNotSupportReversePortrait:Z

.field private mOldListener:Landroid/view/OrientationListener;

.field private mOrientation:I

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTableMode:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmNotSupportReversePortrait(Landroid/view/OrientationEventListener;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/OrientationEventListener;->mNotSupportReversePortrait:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOldListener(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;
    .registers 1

    iget-object p0, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Landroid/view/OrientationEventListener;)I
    .registers 1

    iget p0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTableMode(Landroid/view/OrientationEventListener;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/OrientationEventListener;->mTableMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOrientation(Landroid/view/OrientationEventListener;I)V
    .registers 2

    iput p1, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTableMode(Landroid/view/OrientationEventListener;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/OrientationEventListener;->mTableMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misInAppCastingDisplay(Landroid/view/OrientationEventListener;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/OrientationEventListener;->isInAppCastingDisplay()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rate"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 85
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 86
    iput p2, p0, Landroid/view/OrientationEventListener;->mRate:I

    .line 87
    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mTableMode:Z

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/OrientationEventListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    .line 89
    iput-object v2, p0, Landroid/view/OrientationEventListener;->mDeviceInfoListener:Landroid/hardware/SensorEventListener;

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    .line 91
    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mNotSupportReversePortrait:Z

    .line 92
    if-eqz v1, :cond_5f

    .line 94
    new-instance v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 95
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10071

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    .line 96
    if-eqz v0, :cond_5f

    .line 97
    const-string/jumbo v0, "supports device_common_info"

    const-string v1, "OrientationEventListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "whatsapp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 100
    const-string v0, "Package does not support reverse-portrait"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-boolean v2, p0, Landroid/view/OrientationEventListener;->mNotSupportReversePortrait:Z

    .line 103
    :cond_58
    new-instance v0, Landroid/view/OrientationEventListener$1;

    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$1;-><init>(Landroid/view/OrientationEventListener;)V

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mDeviceInfoListener:Landroid/hardware/SensorEventListener;

    .line 129
    :cond_5f
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method private isInAppCastingDisplay()Z
    .registers 4

    .line 234
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 235
    return v1

    .line 237
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    .line 238
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public disable()V
    .registers 3

    .line 163
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 164
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 167
    :cond_c
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 169
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 170
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mDeviceInfoListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_21

    .line 171
    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 174
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 176
    :cond_24
    return-void
.end method

.method public enable()V
    .registers 5

    .line 143
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 144
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_c
    iget-boolean v1, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    if-nez v1, :cond_2b

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/OrientationEventListener;->mTableMode:Z

    .line 150
    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 151
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_28

    .line 152
    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mDeviceInfoListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 155
    :cond_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 157
    :cond_2b
    return-void
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method registerListener(Landroid/view/OrientationListener;)V
    .registers 2
    .param p1, "lis"    # Landroid/view/OrientationListener;

    .line 135
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    .line 136
    return-void
.end method
