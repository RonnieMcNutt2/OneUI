.class public final Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private appDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;",
            ">;"
        }
    .end annotation
.end field

.field private beginTime:J

.field private endTime:J

.field private highBrightnessTime:J

.field private highRefreshRateTime:J

.field private screenOffDischarge:I

.field private screenOffTime:J

.field private screenOnCount:I

.field private screenOnDischarge:I

.field private screenOnTime:J

.field private screenPowerUsage:D

.field private sysDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;",
            ">;"
        }
    .end annotation
.end field

.field private totalPowerUsage:D


# direct methods
.method static bridge synthetic -$$Nest$fgetappDetailList(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->appDetailList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbeginTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->beginTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetendTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->endTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgethighBrightnessTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->highBrightnessTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgethighRefreshRateTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->highRefreshRateTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetscreenOffDischarge(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOffDischarge:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscreenOffTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOffTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetscreenOnCount(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscreenOnDischarge(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnDischarge:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscreenOnTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetscreenPowerUsage(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenPowerUsage:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetsysDetailList(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->sysDetailList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettotalPowerUsage(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->totalPowerUsage:D

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appDetailList(Ljava/util/List;)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;",
            ">;)",
            "Lcom/samsung/android/sdhms/SemBatteryStats$Builder;"
        }
    .end annotation

    .line 322
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;>;"
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->appDetailList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->appDetailList:Ljava/util/List;

    .line 325
    :cond_b
    if-nez p1, :cond_e

    .line 326
    return-object p0

    .line 329
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->appDetailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    return-object p0
.end method

.method public beginTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 267
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->beginTime:J

    .line 268
    return-object p0
.end method

.method public build()Lcom/samsung/android/sdhms/SemBatteryStats;
    .registers 2

    .line 349
    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemBatteryStats;-><init>(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)V

    return-object v0
.end method

.method public endTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 272
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->endTime:J

    .line 273
    return-object p0
.end method

.method public highBrightnessTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 312
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->highBrightnessTime:J

    .line 313
    return-object p0
.end method

.method public highRefreshRateTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 317
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->highRefreshRateTime:J

    .line 318
    return-object p0
.end method

.method public screenOffDischarge(I)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 302
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOffDischarge:I

    .line 303
    return-object p0
.end method

.method public screenOffTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 292
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOffTime:J

    .line 293
    return-object p0
.end method

.method public screenOnCount(I)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 307
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnCount:I

    .line 308
    return-object p0
.end method

.method public screenOnDischarge(I)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 297
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnDischarge:I

    .line 298
    return-object p0
.end method

.method public screenOnTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 287
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnTime:J

    .line 288
    return-object p0
.end method

.method public screenPowerUsage(D)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 3
    .param p1, "value"    # D

    .line 282
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenPowerUsage:D

    .line 283
    return-object p0
.end method

.method public sysDetailList(Ljava/util/List;)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;",
            ">;)",
            "Lcom/samsung/android/sdhms/SemBatteryStats$Builder;"
        }
    .end annotation

    .line 334
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;>;"
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->sysDetailList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->sysDetailList:Ljava/util/List;

    .line 337
    :cond_b
    if-nez p1, :cond_e

    .line 338
    return-object p0

    .line 341
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->sysDetailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    return-object p0
.end method

.method public totalPowerUsage(D)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .registers 3
    .param p1, "value"    # D

    .line 277
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->totalPowerUsage:D

    .line 278
    return-object p0
.end method
