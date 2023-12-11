.class Landroid/os/BatteryStats$UidMobileRadioStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidMobileRadioStats"
.end annotation


# instance fields
.field public final millisecondsPerPacket:D

.field public final radioActiveCount:I

.field public final radioActiveMs:J

.field public final rxPackets:J

.field public final txPackets:J

.field public final uid:I


# direct methods
.method private constructor <init>(IJJJID)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "rxPackets"    # J
    .param p4, "txPackets"    # J
    .param p6, "radioActiveMs"    # J
    .param p8, "radioActiveCount"    # I
    .param p9, "millisecondsPerPacket"    # D

    .line 9711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9712
    iput p1, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->uid:I

    .line 9713
    iput-wide p4, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->txPackets:J

    .line 9714
    iput-wide p2, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->rxPackets:J

    .line 9715
    iput-wide p6, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    .line 9716
    iput p8, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveCount:I

    .line 9717
    iput-wide p9, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    .line 9718
    return-void
.end method

.method synthetic constructor <init>(IJJJIDLandroid/os/BatteryStats$UidMobileRadioStats-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/os/BatteryStats$UidMobileRadioStats;-><init>(IJJJID)V

    return-void
.end method
