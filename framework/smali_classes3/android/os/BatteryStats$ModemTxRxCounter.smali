.class public abstract Landroid/os/BatteryStats$ModemTxRxCounter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ModemTxRxCounter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRxByteCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract getTxByteCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
.end method
