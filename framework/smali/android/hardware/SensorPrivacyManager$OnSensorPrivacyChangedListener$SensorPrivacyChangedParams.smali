.class public Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorPrivacyChangedParams"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mSensor:I

.field private mToggleType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnabled(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensor(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)I
    .registers 1

    iget p0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mSensor:I

    return p0
.end method

.method private constructor <init>(IIZ)V
    .registers 4
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput p1, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mToggleType:I

    .line 265
    iput p2, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mSensor:I

    .line 266
    iput-boolean p3, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    .line 267
    return-void
.end method

.method synthetic constructor <init>(IIZLandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public getSensor()I
    .registers 2

    .line 274
    iget v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mSensor:I

    return v0
.end method

.method public getToggleType()I
    .registers 2

    .line 270
    iget v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mToggleType:I

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->mEnabled:Z

    return v0
.end method
