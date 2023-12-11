.class public final Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioTime:J

.field private bgTime:J

.field private bluetoothScanCount:I

.field private cpuTime:J

.field private fgTime:J

.field private gpsTime:J

.field private mobilePackets:J

.field private mobileRadioActiveTime:J

.field private power:D

.field private screenPower:D

.field private uid:I

.field private wakelockTime:J

.field private walarm:I

.field private wifiPackets:J


# direct methods
.method static bridge synthetic -$$Nest$fgetaudioTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->audioTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetbgTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->bgTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetbluetoothScanCount(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->bluetoothScanCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcpuTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->cpuTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetfgTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->fgTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetgpsTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->gpsTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmobilePackets(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->mobilePackets:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmobileRadioActiveTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->mobileRadioActiveTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetpower(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->power:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetscreenPower(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->screenPower:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetuid(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->uid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwakelockTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->wakelockTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetwalarm(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->walarm:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiPackets(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->wifiPackets:J

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audioTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 796
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->audioTime:J

    .line 797
    return-object p0
.end method

.method public bgTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 761
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->bgTime:J

    .line 762
    return-object p0
.end method

.method public bluetoothScanCount(I)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 806
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->bluetoothScanCount:I

    .line 807
    return-object p0
.end method

.method public build()Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;
    .registers 2

    .line 812
    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;-><init>(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)V

    return-object v0
.end method

.method public cpuTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 766
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->cpuTime:J

    .line 767
    return-object p0
.end method

.method public fgTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 756
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->fgTime:J

    .line 757
    return-object p0
.end method

.method public gpsTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 791
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->gpsTime:J

    .line 792
    return-object p0
.end method

.method public mobilePackets(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 776
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->mobilePackets:J

    .line 777
    return-object p0
.end method

.method public mobileRadioActiveTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 801
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->mobileRadioActiveTime:J

    .line 802
    return-object p0
.end method

.method public power(D)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # D

    .line 746
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->power:D

    .line 747
    return-object p0
.end method

.method public screenPower(D)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # D

    .line 751
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->screenPower:D

    .line 752
    return-object p0
.end method

.method public uid(I)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 741
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->uid:I

    .line 742
    return-object p0
.end method

.method public wakelockTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 771
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->wakelockTime:J

    .line 772
    return-object p0
.end method

.method public walarm(I)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 786
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->walarm:I

    .line 787
    return-object p0
.end method

.method public wifiPackets(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 781
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->wifiPackets:J

    .line 782
    return-object p0
.end method
