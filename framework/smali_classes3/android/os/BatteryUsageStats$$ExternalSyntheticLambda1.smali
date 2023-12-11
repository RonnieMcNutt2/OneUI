.class public final synthetic Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic f$0:Landroid/os/BatteryUsageStats;


# direct methods
.method public synthetic constructor <init>(Landroid/os/BatteryUsageStats;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda1;->f$0:Landroid/os/BatteryUsageStats;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    iget-object v0, p0, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda1;->f$0:Landroid/os/BatteryUsageStats;

    check-cast p1, Landroid/os/UidBatteryConsumer;

    invoke-static {v0, p1}, Landroid/os/BatteryUsageStats;->$r8$lambda$jk7sWu8yVaqNlh8oFoCZD6rtNUo(Landroid/os/BatteryUsageStats;Landroid/os/UidBatteryConsumer;)D

    move-result-wide v0

    return-wide v0
.end method
