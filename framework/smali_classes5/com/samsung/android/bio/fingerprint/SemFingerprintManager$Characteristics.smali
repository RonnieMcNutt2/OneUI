.class public Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Characteristics"
.end annotation


# static fields
.field public static final SENSOR_POSITION_HOME_KEY:I = 0x1

.field public static final SENSOR_POSITION_IN_DISPLAY:I = 0x2

.field public static final SENSOR_POSITION_POWER_KEY:I = 0x4

.field public static final SENSOR_POSITION_REAR:I = 0x3

.field public static final SENSOR_TYPE_CAPACITANCE:I = 0x1

.field public static final SENSOR_TYPE_OPTICAL:I = 0x2

.field public static final SENSOR_TYPE_ULTRASONIC:I = 0x3

.field private static final mConfig:Ljava/lang/String; = "google_touch_display_optical,settings=3"


# instance fields
.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .registers 2
    .param p1, "fm"    # Landroid/hardware/fingerprint/FingerprintManager;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 629
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    return-void
.end method


# virtual methods
.method public getMaxFingerprintCount()I
    .registers 2

    .line 646
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetMaxEnrollmentNumber()I

    move-result v0

    return v0
.end method

.method public getSensorAreaInDisplay()Landroid/graphics/Rect;
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetFingerIconRectInDisplay()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSensorPosition()I
    .registers 2

    .line 642
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v0

    return v0
.end method

.method public getSensorType()I
    .registers 3

    .line 632
    const-string/jumbo v0, "ultrasonic"

    const-string/jumbo v1, "google_touch_display_optical,settings=3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 633
    const/4 v0, 0x3

    return v0

    .line 634
    :cond_e
    const-string/jumbo v0, "optical"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 635
    const/4 v0, 0x2

    return v0

    .line 637
    :cond_19
    const/4 v0, 0x1

    return v0
.end method
