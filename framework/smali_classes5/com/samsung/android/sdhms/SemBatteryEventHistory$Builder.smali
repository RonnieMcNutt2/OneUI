.class public final Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;
.super Ljava/lang/Object;
.source "SemBatteryEventHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryEventHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private eventType:I

.field private eventValue:I

.field private updateTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgeteventType(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->eventType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteventValue(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->eventValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateTime(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->updateTime:J

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdhms/SemBatteryEventHistory;
    .registers 2

    .line 179
    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemBatteryEventHistory;-><init>(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)V

    return-object v0
.end method

.method public eventType(I)Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 169
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->eventType:I

    .line 170
    return-object p0
.end method

.method public eventValue(I)Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 174
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->eventValue:I

    .line 175
    return-object p0
.end method

.method public updateTime(J)Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 164
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->updateTime:J

    .line 165
    return-object p0
.end method
