.class public abstract Landroid/os/BatteryStats$ModemActivityCounter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ModemActivityCounter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
.end method

.method public abstract getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
.end method

.method public abstract getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
.end method
