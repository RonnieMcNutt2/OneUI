.class public Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
.super Ljava/lang/Object;
.source "SemTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemTemperatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thermistor"
.end annotation


# static fields
.field private static final NUM_OF_TYPE:I = 0xc

.field public static final TYPE_5G_MODEM:I = 0x6

.field public static final TYPE_AP:I = 0x0

.field public static final TYPE_BATTERY:I = 0x1

.field public static final TYPE_CAMERA_FLASH:I = 0x7

.field public static final TYPE_CHARGER:I = 0x2

.field public static final TYPE_PAM:I = 0x5

.field public static final TYPE_PREDICTED_BACK_SURFACE:I = 0xb

.field public static final TYPE_PREDICTED_FRONT_SURFACE:I = 0xa

.field public static final TYPE_PREDICTED_SURFACE:I = 0x9

.field public static final TYPE_TABLET_COOL_AREA:I = 0x8

.field public static final TYPE_USB:I = 0x3

.field public static final TYPE_WIFI:I = 0x4


# instance fields
.field private mType:I


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->mType:I

    .line 117
    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/android/os/SemTemperatureManager$Thermistor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getTemperature()I
    .registers 3

    .line 137
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->-$$Nest$smgetService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 139
    .local v0, "svc":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_11

    .line 141
    :try_start_6
    iget v1, p0, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->mType:I

    invoke-interface {v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getTemperature(I)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    .line 142
    :catch_d
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_11
    const/16 v1, -0x3e7

    return v1
.end method

.method public getType()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->mType:I

    return v0
.end method
