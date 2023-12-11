.class public final Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualSensorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final FLAG_MEMORY_FILE_DIRECT_CHANNEL_SUPPORTED:I = 0x400


# instance fields
.field private mFlags:I

.field mHighestDirectReportRateLevel:I

.field private mMaxDelay:I

.field private mMaximumRange:F

.field private mMinDelay:I

.field private final mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private final mType:I

.field private mVendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    if-lez p1, :cond_10

    .line 251
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mType:I

    .line 252
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mName:Ljava/lang/String;

    .line 253
    return-void

    .line 249
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual sensor type must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/companion/virtual/sensor/VirtualSensorConfig;
    .registers 14

    .line 260
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    if-lez v0, :cond_18

    .line 261
    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_10

    .line 265
    shl-int/lit8 v2, v0, 0x7

    or-int/2addr v1, v2

    iput v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_18

    .line 262
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Setting direct channel type is required for sensors with direct channel support."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_18
    :goto_18
    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-lez v1, :cond_29

    if-eqz v0, :cond_21

    goto :goto_29

    .line 269
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Highest direct report rate level is required for sensors with direct channel support."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_29
    :goto_29
    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    iget v3, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mType:I

    iget-object v4, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mName:Ljava/lang/String;

    iget-object v5, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mVendor:Ljava/lang/String;

    iget v6, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaximumRange:F

    iget v7, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mResolution:F

    iget v8, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mPower:F

    iget v9, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMinDelay:I

    iget v10, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaxDelay:I

    iget v11, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(ILjava/lang/String;Ljava/lang/String;FFFIIILandroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V

    return-object v0
.end method

.method public setDirectChannelTypesSupported(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 4
    .param p1, "memoryTypes"    # I

    .line 365
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_b

    .line 366
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_11

    .line 368
    :cond_b
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    .line 370
    :goto_11
    and-int/lit8 v0, p1, -0x2

    if-gtz v0, :cond_16

    .line 375
    return-object p0

    .line 371
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TYPE_MEMORY_FILE direct channels can be supported for virtual sensors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHighestDirectReportRateLevel(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "rateLevel"    # I

    .line 348
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    .line 349
    return-object p0
.end method

.method public setMaxDelay(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "maxDelay"    # I

    .line 336
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaxDelay:I

    .line 337
    return-object p0
.end method

.method public setMaximumRange(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "maximumRange"    # F

    .line 292
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaximumRange:F

    .line 293
    return-object p0
.end method

.method public setMinDelay(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "minDelay"    # I

    .line 325
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMinDelay:I

    .line 326
    return-object p0
.end method

.method public setPower(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "power"    # F

    .line 314
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mPower:F

    .line 315
    return-object p0
.end method

.method public setResolution(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "resolution"    # F

    .line 303
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mResolution:F

    .line 304
    return-object p0
.end method

.method public setVendor(Ljava/lang/String;)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "vendor"    # Ljava/lang/String;

    .line 281
    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mVendor:Ljava/lang/String;

    .line 282
    return-object p0
.end method
